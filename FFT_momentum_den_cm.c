/********************************************************************
NAME: momentum_den_cm
FUNCTION: Calculates the momentum density using the contrast density and the center of mass velocities (both in r-space) in the grid[m] order
INPUT: density contrast and center of mass velocities in r-space, grid[m]-ordered
RETURN: FFT of momentums
**********************************************************************/
int momentum_den_cm()
{  
  int m, i, j, k;
  FILE *pf=NULL;
  double norm;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_r2k; // FFTW from r-space to k-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_k2r; // FFTW from k-space to r-space

 
  //norm = sqrt(GV.NTOTALCELLS);
    
  /*--- Momentun density in position-space ---*/
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      //Smith et al: NGP
#ifdef NGP      
      /*
      gp[m].p_r[X] = ( 1.0 + (gp[m].DensityInCell - GV.MeanDen)/GV.MeanDen ) * gp[m].v_cm[X];
      gp[m].p_r[Y] = ( 1.0 + (gp[m].DensityInCell - GV.MeanDen)/GV.MeanDen ) * gp[m].v_cm[Y];
      gp[m].p_r[Z] = ( 1.0 + (gp[m].DensityInCell - GV.MeanDen)/GV.MeanDen ) * gp[m].v_cm[Z];
      */
      gp[m].p_r[X] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[X]/(512.0*512.0*512.0);
      gp[m].p_r[Y] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[Y]/(512.0*512.0*512.0);
      gp[m].p_r[Z] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[Z]/(512.0*512.0*512.0);

#endif

      //CIC
#ifdef CIC
      //First CIC: WORKS!
      /*
	gp[m].p_r[X] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[X]/(512.0*512.0*512.0);
	gp[m].p_r[Y] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[Y]/(512.0*512.0*512.0);
	gp[m].p_r[Z] = (GV.NCELLS*GV.NCELLS*GV.NCELLS)*gp[m].gridParts*gp[m].v_cm[Z]/(512.0*512.0*512.0);
      */

      //Smith et al: CIC
      /*
      gp[m].p_r[X] = gp[m].v_cm[X];
      gp[m].p_r[Y] = gp[m].v_cm[Y];
      gp[m].p_r[Z] = gp[m].v_cm[Z];
      */
#endif      
    }//for m
	  

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
      in[m][0] = gp[m].p_r[X]; //Re()
      in[m][1] = 0.0; //Im()	      
    }//for m
  
  
  /*--- Making the FFT ---*/
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in X finished!\n");
  printf("---------------------------------\n");

  /*--- Saving output data ---*/
  //First normalization
  /*
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[X][0] = out[m][0]/norm; //Re()
      gp[m].p_k[X][1] = out[m][1]/norm; //Im()
    }//for m
  */
  //Hockney & Eastwood norm
  norm = GV.CellSize * GV.CellSize * GV.CellSize;
    for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[X][0] = out[m][0]*norm; //Re()
      gp[m].p_k[X][1] = out[m][1]*norm; //Im()
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
      in[m][0] = gp[m].p_r[Y]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m

  
  /* Making the FFT */
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Y finished!\n");
  printf("---------------------------------\n");
  
  /* Saving output data */
  /*
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[Y][0] = out[m][0]/norm; //Re()
      gp[m].p_k[Y][1] = out[m][1]/norm; //Im()
    }//for m
  */
  //Hockney & Eastwood norm
  norm = GV.CellSize * GV.CellSize * GV.CellSize;
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[Y][0] = out[m][0]*norm; //Re()
      gp[m].p_k[Y][1] = out[m][1]*norm; //Im()
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
      in[m][0] = gp[m].p_r[Z]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m
  
 
  /* Making the FFT */
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Z finished!\n");
  printf("---------------------------------\n");
  
  /* Saving output data */
  /*
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[Z][0] = out[m][0]/norm;
      gp[m].p_k[Z][1] = out[m][1]/norm;
    }//for m
  */
    //Hockney & Eastwood norm
  norm = GV.CellSize * GV.CellSize * GV.CellSize;
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_k[Z][0] = out[m][0]*norm; //Re()
      gp[m].p_k[Z][1] = out[m][1]*norm; //Im()
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

  /*--- NGP ---*/
#ifdef NGP
  for(m=0; m<GV.NTOTALCELLS; m++)
   {
     if( fabs(gp[m].weight_NGP) > GV.ZERO)
       {
       //p_w_k(x) NGP
       gp[m].p_w_k[X][0] = gp[m].p_k[X][0]/gp[m].weight_NGP;
       gp[m].p_w_k[X][1] = gp[m].p_k[X][1]/gp[m].weight_NGP;

       //p_w_k(y) NGP
       gp[m].p_w_k[Y][0] = gp[m].p_k[Y][0]/gp[m].weight_NGP;
       gp[m].p_w_k[Y][1] = gp[m].p_k[Y][1]/gp[m].weight_NGP;
       
       //p_w_k(z) NGP
       gp[m].p_w_k[Z][0] = gp[m].p_k[Z][0]/gp[m].weight_NGP;
       gp[m].p_w_k[Z][1] = gp[m].p_k[Z][1]/gp[m].weight_NGP;     

       }//if
     else
     {
	 gp[m].p_w_k[X][0] = 0.0;
	 gp[m].p_w_k[X][1] = 0.0;
	 
	 gp[m].p_w_k[Y][0] = 0.0;
	 gp[m].p_w_k[Y][1] = 0.0;
	 
	 gp[m].p_w_k[Z][0] = 0.0;
	 gp[m].p_w_k[Z][1] = 0.0;
     }//else
   }//for m

  printf("Weighted momentum with NGP window function computed!\n");
  printf("-----------------------------------------------------------------\n");
#endif


  /*--- CIC ---*/
#ifdef CIC
  /*
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if( fabs(gp[m].weight_CIC) > GV.ZERO )
	{
	  //p_w_k(x) CIC
	  gp[m].p_w_k[X][0] = gp[m].p_k[X][0]/gp[m].weight_CIC;
	  gp[m].p_w_k[X][1] = gp[m].p_k[X][1]/gp[m].weight_CIC;		  
	  
	  //p_w_k(y) CIC
	  gp[m].p_w_k[Y][0] = gp[m].p_k[Y][0]/gp[m].weight_CIC;
	  gp[m].p_w_k[Y][1] = gp[m].p_k[Y][1]/gp[m].weight_CIC;
	  
	  //p_w_k(z) CIC
	  gp[m].p_w_k[Z][0] = gp[m].p_k[Z][0]/gp[m].weight_CIC;
	  gp[m].p_w_k[Z][1] = gp[m].p_k[Z][1]/gp[m].weight_CIC;
	}//if
      else
	{
	  //p_w_k(x) CIC
	  gp[m].p_w_k[X][0] = 0.0;
	  gp[m].p_w_k[X][1] = 0.0;
	  
	  //p_w_k(x) CIC
	  gp[m].p_w_k[Y][0] = 0.0;
	  gp[m].p_w_k[Y][1] = 0.0;
	  
	  //p_w_k(x) CIC
	  gp[m].p_w_k[Z][0] = 0.0;
	  gp[m].p_w_k[Z][1] = 0.0;
	}//else
	      
    }//for m

  printf("Weighted momentum with CIC window function computed!\n");
  printf("-----------------------------------------------------------------\n");
  */

  for(m=0; m<GV.NTOTALCELLS; m++)
    {

      /*::::: Computing ik.p in k-space :::::*/

      /* Real part of dot product is with the imaginary part of the momentum. */
      gp[m].p_w_k[X][0] = gp[m].k_vector[X] * gp[m].p_k[X][1];
      gp[m].p_w_k[Y][0] = gp[m].k_vector[Y] * gp[m].p_k[Y][1];
      gp[m].p_w_k[Z][0] = gp[m].k_vector[Z] * gp[m].p_k[Z][1];

      /* Imaginary part of dot product is with the real part of the momentum. */
      gp[m].p_w_k[X][1] = gp[m].k_vector[X] * gp[m].p_k[X][0];
      gp[m].p_w_k[Y][1] = gp[m].k_vector[Y] * gp[m].p_k[Y][0];
      gp[m].p_w_k[Z][1] = gp[m].k_vector[Z] * gp[m].p_k[Z][0];


      /* Once the dot product is performed, it's necessary to deconvolve 
	 with the window function */
      if( fabs(gp[m].weight_CIC) > GV.ZERO )
	{
	  //Re
	  gp[m].p_w_k[X][0] /= gp[m].weight_CIC;
	  gp[m].p_w_k[Y][0] /= gp[m].weight_CIC;
	  gp[m].p_w_k[Z][0] /= gp[m].weight_CIC;

	  //Im
	  gp[m].p_w_k[X][1] /= gp[m].weight_CIC;
	  gp[m].p_w_k[Y][1] /= gp[m].weight_CIC;
	  gp[m].p_w_k[Z][1] /= gp[m].weight_CIC;
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
  
#endif 

  return 0;
} // momentum_den_cm
