/******************************************************************************
NAME: transform
FUNCTION: makes a FFT of an 3D input array and the inverse FFT to obtain 
the initial array to verify. Reorganizes the order of the output array to 
put it in an order according to the filled of the grid[m].
INPUT: A file with the data of densities and velocities. The files 
contains 11 columns: 1.Cell ID - 2.Density -  3,4,5.gp[m].pos[X,Y,Z]
-  6,7,8. gp[m].v_cm[X,Y,Z] - 9,10,11 gp[m].avg_v[X,Y,Z] 
columns are used.
RETURN: The output of the FFT ordered in c-order
******************************************************************************/
int transform()
{
  /*--- DEFINITIONS ---*/
  int m, i, j, k;
  double norm, fx, fy, fz, k2, wx_NGP, wy_NGP, wz_NGP, wx_CIC, wy_CIC, wz_CIC;
  double aux_sinx, aux_siny, aux_sinz;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_r2k; //plan_forward
  //fftw_complex *in2=NULL;
  //fftw_plan plan_k2r; //plan_backward

  FILE *pf=NULL;


  norm = sqrt(GV.NTOTALCELLS);
  
  /*----------------------------------------------------------------------------
                               FFT OF DENSITIES
    --------------------------------------------------------------------------*/  
  /* Creating the input/output array  */
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  
  /* Sorting the densities array  in C-order (row-major order) */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = gp[m].DenConCell; //Re(den_in)
      in[m][1] = 0.0; //Im(den_in)	     	     
    }//for m

  
  printf("Input of contrast density sorted in C-order (row-major order)!\n");
  printf("-----------------------------------------------------------------\n");
  
  /*--- Making the FFT ---*/
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );

  printf("FFT: density contrast r2k finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  /*--- Saving the output ---*/  
  //This is the first normalization I used!
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].DenCon_FFTout[0] = out[m][0]/norm; //Re()
      gp[m].DenCon_FFTout[1] = out[m][1]/norm; //Im()
    }//for m
  

  //This is the normalization according to Hockney & Eastwood, that should be equivalent
  //to that I used before!
  /*
  norm = GV.CellSize * GV.CellSize * GV.CellSize;
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].DenCon_FFTout[0] = norm * out[m][0]; //Re()
      gp[m].DenCon_FFTout[1] = norm * out[m][1]; //Im()
    }//for m
  */
  /*--- K vector: components and module ---*/
  for(i=0; i<GV.NCELLS; i++)
    {
      for(j=0; j<GV.NCELLS; j++)
	{	  
	  for(k=0; k<GV.NCELLS; k++)
	    { 
	      m = INDEX_C_ORDER(i,j,k); //ID in C-order
	      
	      // k_x
	      if( i <= GV.NCELLS/2 ) //nx/2
		gp[m].k_vector[X] = (2.0*M_PI*i) / GV.BoxSize;
	      else
		gp[m].k_vector[X] = (2.0*M_PI*(i-GV.NCELLS)) / GV.BoxSize;
	      
	      // k_y
	      if( j <= GV.NCELLS/2 ) //ny/2
		gp[m].k_vector[Y] = (2.0*M_PI*j) / GV.BoxSize;
	      else
		gp[m].k_vector[Y] = (2.0*M_PI*(j-GV.NCELLS)) / GV.BoxSize;
	      
	      // k_z
	      if( k <= GV.NCELLS/2 ) //nz/2
		gp[m].k_vector[Z] = (2.0*M_PI*k) / GV.BoxSize;
	      else
		gp[m].k_vector[Z] = (2.0*M_PI*(k-GV.NCELLS)) / GV.BoxSize;
	      
	      // k-vector module 
	      k2 = gp[m].k_vector[X]*gp[m].k_vector[X] + gp[m].k_vector[Y]*gp[m].k_vector[Y] + gp[m].k_vector[Z]*gp[m].k_vector[Z] ;
	      gp[m].k_module = sqrt(k2);
	      
	      
	      // Discretized k-vector module         
              aux_sinx = sin(0.5*gp[m].k_vector[X]) * sin(0.5*gp[m].k_vector[X]);
              aux_siny = sin(0.5*gp[m].k_vector[Y]) * sin(0.5*gp[m].k_vector[Y]);
              aux_sinz = sin(0.5*gp[m].k_vector[Z]) * sin(0.5*gp[m].k_vector[Z]);

              gp[m].k_mod_sin = aux_sinx + aux_siny + aux_sinz;

	    }//for k
	}//for j
    }//for i
 
  printf("k vectors computed!\n");
  printf("------------------------------------------------\n");

  
  /*--- Density contrast in k-space with NGP weight function ---*/
#ifdef NGP
  printf("Computing density contrast in k space with NGP weight fn!\n");
  printf("------------------------------------------------\n");
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      /*----- Weight function in x -----*/
      if(fabs(gp[m].k_vector[X]) > GV.ZERO)
	{
	  fx = (gp[m].k_vector[X]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wx_NGP = (sin(fx)/fx);
	}//if 1
      else
	{
	  wx_NGP = 1.0;
	}//else
      
      /*----- Weight function in y -----*/
      if(fabs(gp[m].k_vector[Y]) > GV.ZERO)
	{
	  fy = (gp[m].k_vector[Y]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wy_NGP = (sin(fy)/fy);
	}//if 1
      else
	{
	  wy_NGP = 1.0;
	}//else
      
      /*----- Weight function in z -----*/
      if(fabs(gp[m].k_vector[Z]) > GV.ZERO)
	{
	  fz = (gp[m].k_vector[Z]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wz_NGP = (sin(fz)/fz);  
	}//if 1
      else
	{
	  wz_NGP = 1.0;
	}//else
      
      /*----- Total weight function -----*/
      gp[m].weight_NGP = wx_NGP*wy_NGP*wz_NGP;
      
      
      /*----- Deconvolution of DenCon -----*/
      if(fabs(gp[m].weight_NGP) > GV.ZERO)
	{
	  gp[m].DenCon_K[0] = gp[m].DenCon_FFTout[0] / gp[m].weight_NGP;
	  gp[m].DenCon_K[1] = gp[m].DenCon_FFTout[1] / gp[m].weight_NGP;	  
	}//if
      else
	{
	  gp[m].DenCon_K[0] = 0.0;
	  gp[m].DenCon_K[1] = 0.0;
	}//else    
    }//for m
  
  printf("Density contrast in k-space with NGP weight fn ready!!\n");
  printf("------------------------------------------------\n");
#endif
  

    /*--- Density contrast in k-space with CIC weight function ---*/
#ifdef CIC  
  printf("Computing density contrast in k space with CIC weight-function!\n");
  printf("------------------------------------------------\n");
  
  //pf = fopen("Weight_fn.dat", "w");
  //fprintf(pf, "%s%10s %10s %10s %10s %10s\n", "#", "ID", "Wx", "Wy", "Wz", "W_tot");
	
  for(m=0; m<GV.NTOTALCELLS; m++)
    {	     
      /*----- Weight function in x -----*/
      if(fabs(gp[m].k_vector[X]) > GV.ZERO)
	{
	  fx = (gp[m].k_vector[X]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wx_CIC = (sin(fx)/fx)*(sin(fx)/fx);
	}//if 1
      else
	{
	  wx_CIC = 1.0;
	}//else
      
      /*----- Weight function in y -----*/
      if(fabs(gp[m].k_vector[Y]) > GV.ZERO)
	{
	  fy = (gp[m].k_vector[Y]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wy_CIC = (sin(fy)/fy)*(sin(fy)/fy);
	}//if 1
      else
	{
	  wy_CIC = 1.0;
	}//else
      
      /*----- Weight function in z -----*/
      if(fabs(gp[m].k_vector[Z]) > GV.ZERO)
	{
	  fz = (gp[m].k_vector[Z]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wz_CIC = (sin(fz)/fz)*(sin(fz)/fz);  
	}//if 1
      else
	{
	  wz_CIC = 1.0;
	}//else
      
      /*----- Total weight function -----*/
      gp[m].weight_CIC = wx_CIC*wy_CIC*wz_CIC;

      /*
      fprintf(pf, "%10d %16.8lf %16.8lf %16.8lf %16.8lf\n",
	      m,
	      wx_CIC, wy_CIC, wz_CIC,
	      gp[m].weight_CIC);
      */   
      
      /*----- Deconvolution of DenCon with the total weight function -----*/

      /*wo deconvolution*/
      /*
      gp[m].DenCon_K[0] = gp[m].DenCon_FFTout[0];
      gp[m].DenCon_K[1] = gp[m].DenCon_FFTout[1];
      */
      
      if(fabs(gp[m].weight_CIC) > GV.ZERO)
	{
	  gp[m].DenCon_K[0] = gp[m].DenCon_FFTout[0] / gp[m].weight_CIC;
	  gp[m].DenCon_K[1] = gp[m].DenCon_FFTout[1] / gp[m].weight_CIC;
	}//if
      else
	{
	  gp[m].DenCon_K[0] = 0.0;
	  gp[m].DenCon_K[1] = 0.0;	  
      }//else
      
    }//for m

  //fclose(pf);
  printf("Density contrast in k-space with CIC weight fn ready!!\n");
  printf("-----------------------------------------------------------------\n");
#endif

   
  /* Recreating the input */
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex )*GV.NCELLS*GV.NCELLS*GV.NCELLS );
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute( plan_k2r );
  printf("Inverse FFT for contrast density finished!\n");
  */

  /*--- Destroying plans ---*/
  printf("Destroying plans!\n");
  printf("--------------------------------------------------\n");
  fftw_destroy_plan( plan_r2k );
  printf("plan_r2k destroyed!");
  //fftw_destroy_plan( plan_k2r );
  //printf("plan_r2k destroyed!");

  /*--- Freeing up memory! ---*/
  printf("Freeing up memory!\n");
  printf("--------------------------------------------------\n");
  free(in);
  //free(in2);
  fftw_free(out);

  printf("FFT_transform code finished!\n");
  printf("--------------------------------------------------\n");

  return 0;
}//transform