/*************************************************************************************
NAME: potential_dot
FUNCTION: Calculates the time derivative of the potential of the 
density contrast in the k-space (from the FFT)in the grid[m] order, 
and then with an IFFT calculates the time derivative of potential in 
the position's space
INPUT: density contrast in the k-space, wave vectors, momentum field 
in k-space.
RETURN: File with the input and outputs (sorted in the grid[m] order)
*************************************************************************************/
int potential_dot()
{
  int m, i, j, k;
  double norm, alpha, pot_Re1, pot_Re2, pot_Im1, pot_Im2, factor;
  double Green_factor;
  FILE *pf=NULL;
  
  /*+++ FFTW DEFINITIONS +++*/
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_r2k; // FFTW from r-space to k-space
  
  norm = sqrt( GV.NTOTALCELLS );

  printf("Computing time derivative of potential in k-space!\n");
  printf("-----------------------------------------------------------------\n");

  /*+++ Computing the time derivative of potential in k-space +++*/
  //factor = (3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;
  factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      //Re
      pot_Re1 = GV.Hz*gp[m].DenCon_K[0];
      pot_Re2 = -1.0*( gp[m].p_w_k[X][0] + gp[m].p_w_k[Y][0] + gp[m].p_w_k[Z][0] )/GV.a_SF;

      //Im
      pot_Im1 = GV.Hz*gp[m].DenCon_K[1];
      pot_Im2 = ( gp[m].p_w_k[X][1] + gp[m].p_w_k[Y][1] + gp[m].p_w_k[Z][1] )/GV.a_SF;
      
      //Unifying      
      if(gp[m].k_mod_sin > GV.ZERO)
	{
	  Green_factor = -1.0 / gp[m].k_mod_sin;
	  alpha = factor * Green_factor;
	  
	  gp[m].potDot_k[0] = alpha * ( pot_Re1 + pot_Re2 ); //Re()
	  gp[m].potDot_k[1] = alpha * ( pot_Im1 + pot_Im2 ); //Im()

	  if(m%1000000==0)
	    {
	      printf("%10d %16.8lf %16.8lf\n", m, gp[m].k_mod_sin, Green_factor);
	    }//if
	  
	}//if
      else
	{
	  gp[m].potDot_k[0] = 0.0; //Re()
	  gp[m].potDot_k[1] = 0.0; //Im()
	}//else      
      
      Green_factor = 0.0;
      pot_Re1 = 0.0;
      pot_Re2 = 0.0;
      pot_Im1 = 0.0;
      pot_Im2 = 0.0;

    }//for m
  
  /*
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      if( fabs(gp[m].k_module) > GV.ZERO ) 
	{
	  pot_Re1 = GV.Hz*gp[m].DenCon_K[0];
	  pot_Re2 = -1.0*( gp[m].k_vector[X]*gp[m].p_w_k[X][1] + gp[m].k_vector[Y]*gp[m].p_w_k[Y][1] + gp[m].k_vector[Z]*gp[m].p_w_k[Z][1] )/GV.a_SF;
	  
	  pot_Im1 = GV.Hz*gp[m].DenCon_K[1];
	  pot_Im2 = ( gp[m].k_vector[X]*gp[m].p_w_k[X][0] + gp[m].k_vector[Y]*gp[m].p_w_k[Y][0] + gp[m].k_vector[Z]*gp[m].p_w_k[Z][0] )/GV.a_SF;
	  
	  //--- Unifying ---
	  alpha = factor / (gp[m].k_module * gp[m].k_module);	  
	  gp[m].potDot_k[0] = alpha * ( pot_Re1 + pot_Re2 ); //Re()
	  gp[m].potDot_k[1] = alpha * ( pot_Im1 + pot_Im2 ); //Im()
	}//if
      else
	{
	  gp[m].potDot_k[0] = 0.0;
	  gp[m].potDot_k[1] = 0.0;
	}//else
      
      pot_Re1 = 0.0;
      pot_Re2 = 0.0;
      pot_Im1 = 0.0;
      pot_Im2 = 0.0;
      
    }//for m
  */
  
  printf("Data time derivative of potential in k-space assigned!\n");
  printf("-----------------------------------------------------------------\n");

  
  /*+++ Creating input/output  arrays +++*/
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
    
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      in[m][0] = gp[m].potDot_k[0];
      in[m][1] = gp[m].potDot_k[1]; 
    }//for m

  
  /*+++ Making the FFT +++*/
  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
  fftw_execute(plan_k2r);
  
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");
  
  
  /*+++ Saving data +++*/
  //First normalization
  /*
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      gp[m].potDot_r[0] = out[m][0]/norm; //Re()
      gp[m].potDot_r[1] = out[m][1]/norm; //Im()	     
    }//for m
  */
  //Hockney & Eastwood norm
  norm = 1.0/(GV.BoxSize * GV.BoxSize * GV.BoxSize);
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      gp[m].potDot_r[0] = out[m][0]*norm; //Re()
      gp[m].potDot_r[1] = out[m][1]*norm; //Im()	     
    }//for m
   
  /*Recreating input array*/
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * nx * ny * nz );  
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );  
  */  

  fftw_destroy_plan( plan_k2r );
  //fftw_destroy_plan( plan_r2k );
  
  free(in);
  //fftw_free(in2);
  fftw_free(out);
  
  printf("FFT_pot_dot code finished!\n");
  printf("--------------------------\n");

  return 0;
}//potential_dot
