/********************************************************************
NAME: momentum_den_cm
FUNCTION: Calculates the momentum density using the contrast density and the center of mass velocities (both in r-space) in the grid[m] order
INPUT: density contrast and center of mass velocities in r-space, grid[m]-ordered
RETURN: FFT of momentums
**********************************************************************/
int momentum_den_cm(double **p_r)
{  
  int m, i, j, k;
  FILE *pf=NULL;
  double norm, Nparts;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_r2k; // FFTW from r-space to k-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_k2r; // FFTW from k-space to r-space

 
  //norm = sqrt(GV.NTOTALCELLS);
    
  /*--- Momentun density in position-space ---*/
  /*
#ifdef NGP      
  Nparts = 512.0*512.0*512.0
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      p_r[m][X] = (GV.NTOTALCELLS)*gp[m].gridParts*p_r[m][X] / Nparts;
      p_r[m][Y] = (GV.NTOTALCELLS)*gp[m].gridParts*p_r[m][Y] / Nparts;
      p_r[m][Z] = (GV.NTOTALCELLS)*gp[m].gridParts*p_r[m][Z] / Nparts;
    }//for m
#endif	  
  */
  /*----------------------------------------------------------------------------
                               FFT of momentum in X
  ----------------------------------------------------------------------------*/
  printf("Dealing with FFT momentum_cm in X!\n");
  printf("---------------------------------\n");
  
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);

  /*--- Assigning momentum to the input of the fft ---*/
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][X]; //Re()
      in[m][1] = 0.0; //Im()	      
    }//for m
  
  
  /*--- Making the FFT ---*/
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in X finished!\n");
  printf("---------------------------------\n");

  /*--- Saving output data ---*/
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[X][0] = GV.r2k_norm * GV.fftw_norm * out[m][0]; //Re()
      gp[m].p_w_k[X][1] = GV.r2k_norm * GV.fftw_norm * out[m][1]; //Im()
    }//for m
  

  /*--- Recreate the input ---*/
  /*
  in2 = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NCELLS * GV.NCELLS * GV.NCELLS );
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute( plan_k2r );
  printf("Inverse FFT for momentum in y finished!\n");
  */  

  free(in);
  //free(in2);
  fftw_free(out);
  

  /*----------------------------------------------------------------------------
                                FFT momentum in Y 
  ----------------------------------------------------------------------------*/
  printf(" Dealing with FFT momentum_cm in Y!\n");
  printf("---------------------------------\n");
  
  in = (fftw_complex *)  fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  
  /* Sorting the momentum density in Y as input of the FFT */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][Y]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m

  
  /* Making the FFT */
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Y finished!\n");
  printf("---------------------------------\n");
  
  /* Saving output data */
  norm = GV.CellSize * GV.CellSize * GV.CellSize;
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[Y][0] = GV.r2k_norm * GV.fftw_norm * out[m][0]; //Re()
      gp[m].p_w_k[Y][1] = GV.r2k_norm * GV.fftw_norm * out[m][1]; //Im()
    }//for m
  

  /* Recreate the input */
  /*  
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * GV.NCELLS * GV.NCELLS * GV.NCELLS );
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute( plan_k2r );
  */
    
  free(in);
  //free(in2);
  fftw_free(out);
  
  
  /*----------------------------------------------------------------------------
                                  FFT momentum in Z
  ----------------------------------------------------------------------------*/
  printf(" Dealing with FFT momentum_cm in Z!\n");
  printf("---------------------------------\n");
  
  /* Creating input array */
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][Z]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m
  
 
  /* Making the FFT */
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Z finished!\n");
  printf("---------------------------------\n");
  
  /* Saving output data */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[Z][0] = GV.r2k_norm * GV.fftw_norm * out[m][0]; //Re()
      gp[m].p_w_k[Z][1] = GV.r2k_norm * GV.fftw_norm * out[m][1]; //Im()
    }//for m


  /* Recreate the input */
  /*
  in2 = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NCELLS * GV.NCELLS * GV.NCELLS);
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute( plan_k2r );
  */  
  
  fftw_destroy_plan( plan_r2k );
  //fftw_destroy_plan( plan_k2r );
  fftw_free(in);
  //fftw_free(in2);
  fftw_free(out);
 
  
  /*----------------------------------------------------------------------------
                                   Weighted Momentum
  ----------------------------------------------------------------------------*/

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      /*::::: Computing ik.p in k-space :::::*/

      /* Real part of dot product is with the imaginary part of the momentum. */
      gp[m].p_w_k[X][0] = gp[m].k_vector[X] * gp[m].p_w_k[X][1];
      gp[m].p_w_k[Y][0] = gp[m].k_vector[Y] * gp[m].p_w_k[Y][1];
      gp[m].p_w_k[Z][0] = gp[m].k_vector[Z] * gp[m].p_w_k[Z][1];

      /* Imaginary part of dot product is with the real part of the momentum. */
      gp[m].p_w_k[X][1] = gp[m].k_vector[X] * gp[m].p_w_k[X][0];
      gp[m].p_w_k[Y][1] = gp[m].k_vector[Y] * gp[m].p_w_k[Y][0];
      gp[m].p_w_k[Z][1] = gp[m].k_vector[Z] * gp[m].p_w_k[Z][0];


      /* Once the dot product is performed, it's necessary to deconvolve 
	 with the window function */
      if( fabs(gp[m].weight) > GV.ZERO )
	{
	  //Re
	  gp[m].p_w_k[X][0] /= gp[m].weight;
	  gp[m].p_w_k[Y][0] /= gp[m].weight;
	  gp[m].p_w_k[Z][0] /= gp[m].weight;

	  //Im
	  gp[m].p_w_k[X][1] /= gp[m].weight;
	  gp[m].p_w_k[Y][1] /= gp[m].weight;
	  gp[m].p_w_k[Z][1] /= gp[m].weight;
	}//if
      else
	{
	  //Re
	  gp[m].p_w_k[X][0] = 0.0;
	  gp[m].p_w_k[Y][0] = 0.0;
	  gp[m].p_w_k[Z][0] = 0.0;

	  //Im
	  gp[m].p_w_k[X][1] = 0.0;
	  gp[m].p_w_k[Y][1] = 0.0;
	  gp[m].p_w_k[Z][1] = 0.0;
	}//else

    }//for m
  

  return 0;
} // momentum_den_cm
