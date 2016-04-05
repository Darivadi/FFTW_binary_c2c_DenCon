/********************************************************************
NAME: potential
FUNCTION: Calculates the potential of the contrast density in the k-space (from the FFT)in the grid[m] order, and then with an IFFT calculates the potential in the real space
INPUT: density contrast in the k-space
RETURN: File with the input and outputs (sorted in the grid[m] order)
**********************************************************************/
int potential()
{
  int m, p, i, j, k;
  double norm, factor;
  FILE *pf=NULL, *pf1=NULL;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_r2k; // FFTW from r-space to k-space
    
  //norm = sqrt( GV.NTOTALCELLS );
    
  /*----- Computing the potential in k-space -----*/
  printf("Computing potential in k-space\n");
  printf("-----------------------------------------\n");

  //Factor of the potential
  factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if( gp[m].k_module > GV.ZERO )
	{
	  gp[m].poten_k[0] = factor * gp[m].DenCon_K[0]/(gp[m].k_module * gp[m].k_module); //Re()
	  gp[m].poten_k[1] = factor * gp[m].DenCon_K[1]/(gp[m].k_module * gp[m].k_module); //Im()
	}//if 
      else
	{
	  gp[m].poten_k[0] = 0.0; //Re()
	  gp[m].poten_k[1] = 0.0; //Im()
	}//else

      if(m%1000000==0)
	{
	  printf("%lf %lf\n", gp[m].poten_k[0], gp[m].poten_k[1]);
	}//if
      
    }//for m

  printf("Potential in k-space saved!\n");
  printf("-----------------------------------------\n");
  

  /* Creating input/output arrays */
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );
  
  /* Saving the potential input of the FFT */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = gp[m].poten_k[0]; //Re()
      in[m][1] = gp[m].poten_k[1]; //Im()
    }//for m

  
  /* Making the FFT */
  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
  fftw_execute( plan_k2r );
  
  printf("FFT potential k2r finished!\n");
  printf("---------------------------------------\n");
  
  /*Sorting and saving the output data */
  //First normalization I used
  /*
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      gp[m].poten_r[0] = out[m][0]/norm; //Re()
      gp[m].poten_r[1] = out[m][1]/norm; //Im()

      if(m%1000000==0)
	{
	  printf("%lf %lf\n", gp[m].poten_r[0], gp[m].poten_r[1]);
	}//if
	          
    }//for m
  */
  
  //Hockney & Eastwood normalization
  norm = 1.0 / (GV.BoxSize * GV.BoxSize * GV.BoxSize);
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      gp[m].poten_r[0] = norm * out[m][0]; //Re()
      gp[m].poten_r[1] = norm * out[m][1]; //Im()	          
    }//for m
  
  printf("---------------------------------------\n");
  printf("Grid-sorted potential in r space saved!\n");
  printf("---------------------------------------\n");
 

  /*Recreating input array*/
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * nx * ny * nz );  
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );  
  */

  fftw_destroy_plan( plan_k2r );
  //fftw_destroy_plan( plan_r2k );
  
  free( in );
  //fftw_free( in2 );
  fftw_free( out );
  
  printf("FFT_potential code finished!\n");
  printf("----------------------------\n");   

  return 0;
}//potential
