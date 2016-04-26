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
int potential_dot(double **potDot_r)
{
  int m, i, j, k;
  double alpha, pot_Re1, pot_Re2, pot_Im1, pot_Im2, factor;
  double Green_factor;
  double pos_aux[3];
  FILE *pf=NULL;
  //double nyquist_freq;
  
  /*+++ FFTW DEFINITIONS +++*/
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_r2k; // FFTW from r-space to k-space
  

  printf("Computing time derivative of potential in k-space!\n");
  printf("-----------------------------------------------------------------\n");

  /*+++ Computing the time derivative of potential in k-space +++*/  
  factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;
  //nyquist_freq = M_PI / GV.CellSize;
  
  for(i=0; i<GV.NCELLS; i++)  
    {
      for(j=0; j<GV.NCELLS; j++)
	{
	  for(k=0; k<GV.NCELLS; k++)
	    {
	      m = INDEX_C_ORDER(i,j,k);
	      
	      //Re
	      pot_Re1 = GV.Hz*gp[m].DenCon_K[0];
	      pot_Re2 = -1.0*( gp[m].p_w_k[X][0] + gp[m].p_w_k[Y][0] + gp[m].p_w_k[Z][0] )/GV.a_SF;
	      
	      //Im
	      pot_Im1 = GV.Hz*gp[m].DenCon_K[1];
	      pot_Im2 = ( gp[m].p_w_k[X][1] + gp[m].p_w_k[Y][1] + gp[m].p_w_k[Z][1] ) / GV.a_SF;
	      
	      //Unifying      
	      if(gp[m].k_mod_sin > GV.ZERO)
		{
		  if( (i <= GV.NCELLS/2) && (j <= GV.NCELLS/2) && (k <= GV.NCELLS/2) )
		    {		      
		      Green_factor = -1.0 / gp[m].k_mod_sin;
		      alpha = factor * Green_factor;
		      
		      gp[m].potDot_k[0] = alpha * ( pot_Re1 + pot_Re2 ); //Re()
		      gp[m].potDot_k[1] = alpha * ( pot_Im1 + pot_Im2 ); //Im()
		      
		      if(m%5000000==0)
			{
			  printf("%10d %16.8lf %16.8lf\n", m, gp[m].k_mod_sin, Green_factor);
			}//if
		      
		    }//if i, j, k
		  else
		    {		      
		      gp[m].potDot_k[0] = 0.0; //Re()
		      gp[m].potDot_k[1] = 0.0; //Im()
		    }//else i,j,k
		  
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
	      
	    }//for k
	}//for j 
    }//for i
  
  /*
  factor = (3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;
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
  
  
  /*+++++ Saving data +++++*/  
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r[m][0] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm; //Re()
      //potDot_r[m][1] = GV.k2r_norm * out[m][1]; //Im() 
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

  
  printf("Writing binary file with PotDot\n");
  printf("--------------------------\n");

  pf = fopen("./../../Processed_data/PotDot.bin", "w");
  /*+++++ Saving Simulation parameters +++++*/
  fwrite(&GV.BoxSize, sizeof(double), 1, pf);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf);  // Cosmological constant density parameter
  fwrite(&GV.z_RS, sizeof(double), 1, pf);  // Redshift
  fwrite(&GV.H0, sizeof(double), 1, pf);  // Hubble parameter
  

  for(i=0; i<GV.NCELLS; i++)  
    {
      for(j=0; j<GV.NCELLS; j++)
	{
	  for(k=0; k<GV.NCELLS; k++)
	    {
	      m = INDEX_C_ORDER(i,j,k);
	      pos_aux[X] = i * GV.CellSize;
	      pos_aux[Y] = j * GV.CellSize;
	      pos_aux[Z] = k * GV.CellSize;
	      
	      fwrite(&pos_aux[0], sizeof(double), 3, pf);
	      fwrite(&potDot_r[m][0], sizeof(double), 1, pf);
	    }//for k	  
	}//for j
    }//for i
  fclose(pf);

  free(potDot_r);
  
  return 0;
}//potential_dot
