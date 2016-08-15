/********************************************************************
NAME: momentum_den_cm
FUNCTION: Calculates the momentum density using the contrast density and the center of mass velocities (both in r-space) in the grid[m] order
INPUT: density contrast and center of mass velocities in r-space, grid[m]-ordered
RETURN: FFT of momentums
**********************************************************************/
int read_vels(double **p_r)
{  
  int m, nread;
  double vel_aux[3], norm_factor;
  FILE *inFile=NULL;
  
  inFile = fopen(GV.FILENAMEVELS, "r");
    
  norm_factor = GV.a_SF * ( (1.0*GV.NTOTALCELLS) / (1.0*GV.Total_NParts) ); 

  for(m=0; m<GV.NTOTALCELLS; m++ )
    {             
      //nread = fread(&vel_aux[0], sizeof(double), 3, inFile);
      nread = fread(&vel_aux[0], sizeof(double), 1, inFile);
      nread = fread(&vel_aux[1], sizeof(double), 1, inFile);
      nread = fread(&vel_aux[2], sizeof(double), 1, inFile);

      p_r[m][X] = norm_factor * vel_aux[X];
      p_r[m][Y] = norm_factor * vel_aux[Y];
      p_r[m][Z] = norm_factor * vel_aux[Z];            
    }//for m
  
  fclose(inFile);
}//read_vels



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
  double aux_mom[3][2];
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_r2k; // FFTW from r-space to k-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_k2r; // FFTW from k-space to r-space

    
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
  
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);

  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, 
    in, out, FFTW_FORWARD, FFTW_ESTIMATE);

  /*--- Assigning momentum to the input of the fft ---*/
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][X]; //Re()
      in[m][1] = 0.0; //Im()	      
    }//for m
  
  
  /*--- Making the FFT ---*/
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

  fftw_free(in);
  //free(in2);
  fftw_free(out);
  

  /*----------------------------------------------------------------------------
                                FFT momentum in Y 
  ----------------------------------------------------------------------------*/
  printf(" Dealing with FFT momentum_cm in Y!\n");
  printf("---------------------------------\n");
  
  in  = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, 
    in, out, FFTW_FORWARD, FFTW_ESTIMATE);
  
  /* Sorting the momentum density in Y as input of the FFT */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][Y]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m

  
  /* Making the FFT */  
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Y finished!\n");
  printf("---------------------------------\n");
  
  /* Saving output data */  
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
    
  fftw_free(in);
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
  
  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, 
    in, out, FFTW_FORWARD, FFTW_ESTIMATE);

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][Z]; //Re()
      in[m][1] = 0.0; //Im()
    }//for m

  /*----- Freeing up memory of momentum in coordinates-space -----*/
  free(p_r);
 
  /* Making the FFT */  
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
  /*
  FILE *outFile=NULL;
  double kp[3][2];

  //outFile = fopen("./../../Processed_data/DenCon_vs_KDotP_wo_deconv.bin", "w");
  outFile = fopen("./../../Processed_data/DenCon_vs_KDotP_W_deconv.bin", "w");

  fwrite(&GV.BoxSize, sizeof(double), 1, outFile);  // Box Size                                             
  fwrite(&GV.Omega_M0, sizeof(double), 1, outFile);  // Matter density parameter                           
  fwrite(&GV.Omega_L0, sizeof(double), 1, outFile);  // Cosmological constant density parameter            
  fwrite(&GV.z_RS, sizeof(double), 1, outFile);  // Redshift                                            
  fwrite(&GV.Hz, sizeof(double), 1, outFile);  // Hubble parameter 
  */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      /* Deconvolving with the window function */
      
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
      
      /*::::: Computing ik.p in k-space :::::*/    
      aux_mom[X][0] = gp[m].p_w_k[X][0];
      aux_mom[X][1] = gp[m].p_w_k[X][1];

      aux_mom[Y][0] = gp[m].p_w_k[Y][0];
      aux_mom[Y][1] = gp[m].p_w_k[Y][1];

      aux_mom[Z][0] = gp[m].p_w_k[Z][0];
      aux_mom[Z][1] = gp[m].p_w_k[Z][1];
      
      /* Real part of dot product is with the imaginary part of the momentum. */
      gp[m].p_w_k[X][0] = gp[m].k_vector[X] * aux_mom[X][1];
      gp[m].p_w_k[Y][0] = gp[m].k_vector[Y] * aux_mom[Y][1];
      gp[m].p_w_k[Z][0] = gp[m].k_vector[Z] * aux_mom[Z][1];
      
      /* Imaginary part of dot product is with the real part of the momentum. */
      gp[m].p_w_k[X][1] = gp[m].k_vector[X] * aux_mom[X][0];
      gp[m].p_w_k[Y][1] = gp[m].k_vector[Y] * aux_mom[Y][0];
      gp[m].p_w_k[Z][1] = gp[m].k_vector[Z] * aux_mom[Z][0];
           
      /*
      //----- Saving data -----
      kp[X][0] = gp[m].p_w_k[X][0];
      kp[Y][0] = gp[m].p_w_k[Y][0];
      kp[Z][0] = gp[m].p_w_k[Z][0];
      
      kp[X][1] = gp[m].p_w_k[X][1];
      kp[Y][1] = gp[m].p_w_k[Y][1];
      kp[Z][1] = gp[m].p_w_k[Z][1];
            
      
      fwrite(&gp[m].DenCon_K[0], sizeof(double), 2, outFile);  // Density contrast in cell in k-space (Re + Im).
      fwrite(&kp[X][0],sizeof(double), 1, outFile); //kp real in X
      fwrite(&kp[X][1],sizeof(double), 1, outFile); //kp im in X

      fwrite(&kp[Y][0],sizeof(double), 1, outFile); //kp real in Y
      fwrite(&kp[Y][1],sizeof(double), 1, outFile); //kp im in Y
      
      fwrite(&kp[Z][0],sizeof(double), 1, outFile); //kp real in Z
      fwrite(&kp[Z][1],sizeof(double), 1, outFile); //kp im in Z
      */
    }//for m
  //fclose(outFile); 

  return 0;
} // momentum_den_cm
