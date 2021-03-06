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
int transform(double *DenConCell)
{
  /*--- DEFINITIONS ---*/
  int m, i, j, k, l;
  double fx, fy, fz, k2, wx, wy, wz;
  double aux_sinx, aux_siny, aux_sinz;
  double aux_k_mod1, aux_factor;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_r2k; //plan_forward
  //fftw_complex *in2=NULL;
  //fftw_plan plan_k2r; //plan_backward

  FILE *pf=NULL;
  char buffer[50];

  
  /*----------------------------------------------------------------------------
                               FFT OF DENSITIES
    --------------------------------------------------------------------------*/  
  /* Creating the input/output array  */
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);

  /*--- Declaring the FFT ---*/
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_FORWARD, FFTW_ESTIMATE );
  
  /* Sorting the densities array  in C-order (row-major order) */
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = DenConCell[m]; //Re(den_in)
      in[m][1] = 0.0; //Im(den_in)	     	     
    }//for m

  free(DenConCell);
  
  printf("Input of contrast density sorted in C-order (row-major order)!\n");
  printf("-----------------------------------------------------------------\n");
  
  /*--- Executing the FFT ---*/
  fftw_execute( plan_r2k );

  printf("FFT: density contrast r2k finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  /*--- Saving the output ---*/  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].DenCon_K[0] = GV.r2k_norm * GV.fftw_norm * out[m][0]; //Re()
      gp[m].DenCon_K[1] = GV.r2k_norm * GV.fftw_norm * out[m][1]; //Im()
    }//for m


#ifdef FOURIERFIELDS
  pf = fopen("./../../Processed_data/DenCon_k.bin", "w");

  fwrite(&GV.BoxSize,  sizeof(double), 1, pf);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf);  // Cosmological constant density parameter
  fwrite(&GV.z_RS,     sizeof(double), 1, pf);  // Redshift
  fwrite(&GV.H0,       sizeof(double), 1, pf);  // Hubble parameter
  fwrite(&GV.NCELLS,   sizeof(int),    1, pf);  // Hubble parameter
  
  for(m=0; m< GV.NTOTALCELLS; m++)
    {
      fwrite(&(gp[m].DenCon_K[0]), sizeof(double), 2, pf);
    }//for m
  
  fclose(pf);
#endif


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
  fftw_free(in);
  //free(in2);
  fftw_free(out);
 
  /*--- K vector: components and module ---*/
  //pf = fopen("./../../Processed_data/k_module_256.bin", "w");

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
	      /*
	      k2 = gp[m].k_vector[X]*gp[m].k_vector[X] + gp[m].k_vector[Y]*gp[m].k_vector[Y] + gp[m].k_vector[Z]*gp[m].k_vector[Z] ;
	      gp[m].k_module = sqrt(k2);
	      */
	      
	      /*-----  Discretized k-vector module -----*/	      
	      //According to Hockney & Eastwood                                                                 
              aux_factor = gp[m].k_vector[X]*GV.CellSize*0.5;
              aux_sinx = sin(aux_factor)*sin(aux_factor);

              aux_factor = gp[m].k_vector[Y]*GV.CellSize*0.5;
              aux_siny = sin(aux_factor)*sin(aux_factor);

              aux_factor = gp[m].k_vector[Z]*GV.CellSize*0.5;
              aux_sinz = sin(aux_factor)*sin(aux_factor);

              aux_factor = (GV.CellSize*0.5) * (GV.CellSize*0.5);
              gp[m].k_mod_HE = (aux_sinx + aux_siny + aux_sinz) / aux_factor;
	      	     
	    }//for k
	}//for j
    }//for i
  
  //fclose(pf);
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
	  wx = (sin(fx)/fx);
	}//if 1
      else
	{
	  wx = 1.0;
	}//else
      
      /*----- Weight function in y -----*/
      if(fabs(gp[m].k_vector[Y]) > GV.ZERO)
	{
	  fy = (gp[m].k_vector[Y]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wy = (sin(fy)/fy);
	}//if 1
      else
	{
	  wy = 1.0;
	}//else
      
      /*----- Weight function in z -----*/
      if(fabs(gp[m].k_vector[Z]) > GV.ZERO)
	{
	  fz = (gp[m].k_vector[Z]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wz = (sin(fz)/fz);  
	}//if 1
      else
	{
	  wz = 1.0;
	}//else
      
      /*----- Total weight function -----*/
      gp[m].weight = wx*wy*wz;
      
      
      /*----- Deconvolution of DenCon -----*/
      if(fabs(gp[m].weight) > GV.ZERO)
	{
	  gp[m].DenCon_K[0] = gp[m].DenCon_K[0] / gp[m].weight;
	  gp[m].DenCon_K[1] = gp[m].DenCon_K[1] / gp[m].weight;

#ifdef CIC_MDR
	  /*::::: Deconvolution with gaussian smoothing function :::::*/
	  k2 = gp[m].k_vector[X]*gp[m].k_vector[X] + gp[m].k_vector[Y]*gp[m].k_vector[Y] + gp[m].k_vector[Z]*gp[m].k_vector[Z]; 
	  aux_factor = -0.5*GV.CellSize*GV.CellSize*k2;
	  aux_factor = exp(aux_factor);
	  aux_factor = 1.0 / aux_factor;
	  gp[m].DenCon_K[0] *= aux_factor;
	  gp[m].DenCon_K[1] *= aux_factor;	    
#endif	  
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

  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {	     
      /*----- Weight function in x -----*/
      if(fabs(gp[m].k_vector[X]) > GV.ZERO)
	{
	  fx = (gp[m].k_vector[X]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wx = (sin(fx)/fx)*(sin(fx)/fx);
	  //wx = GV.CellSize * (sin(fx)/fx)*(sin(fx)/fx); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wx = 1.0;
	}//else
      
      /*----- Weight function in y -----*/
      if(fabs(gp[m].k_vector[Y]) > GV.ZERO)
	{
	  fy = (gp[m].k_vector[Y]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wy = (sin(fy)/fy)*(sin(fy)/fy);
	  //wy = GV.CellSize * (sin(fy)/fy)*(sin(fy)/fy); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wy = 1.0;
	}//else
      
      /*----- Weight function in z -----*/
      if(fabs(gp[m].k_vector[Z]) > GV.ZERO)
	{
	  fz = (gp[m].k_vector[Z]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wz = (sin(fz)/fz)*(sin(fz)/fz);  
	  //wz = GV.CellSize * (sin(fz)/fz)*(sin(fz)/fz); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wz = 1.0;
	}//else
      
      /*----- Total weight function -----*/
      gp[m].weight = wx * wy * wz;

      
      /*----- Deconvolution of DenCon with the total weight function -----*/        
      if(fabs(gp[m].weight) > GV.ZERO)
	{
	  gp[m].DenCon_K[0] = gp[m].DenCon_K[0] / gp[m].weight;
	  gp[m].DenCon_K[1] = gp[m].DenCon_K[1] / gp[m].weight;

#ifdef CIC_MDR
	  /*::::: Deconvolution with gaussian smoothing function :::::*/
	  k2 = gp[m].k_vector[X]*gp[m].k_vector[X] + gp[m].k_vector[Y]*gp[m].k_vector[Y] + gp[m].k_vector[Z]*gp[m].k_vector[Z]; 
	  aux_factor = -0.5*GV.CellSize*GV.CellSize*k2;
	  aux_factor = exp(aux_factor);
	  aux_factor = 1.0 / aux_factor;
	  gp[m].DenCon_K[0] *= aux_factor;
	  gp[m].DenCon_K[1] *= aux_factor;	    
#endif
	}//if
      else
	{
	  gp[m].DenCon_K[0] = 0.0;
	  gp[m].DenCon_K[1] = 0.0;	  
      }//else
      
    }//for m

  printf("Density contrast in k-space with CIC weight fn ready!!\n");
  printf("-----------------------------------------------------------------\n");
#endif



    /*--- Density contrast in k-space with TSC weight function ---*/
#ifdef TSC  
  printf("Computing density contrast in k space with CIC weight-function!\n");
  printf("------------------------------------------------\n");
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {	     
      /*----- Weight function in x -----*/
      if(fabs(gp[m].k_vector[X]) > GV.ZERO)
	{
	  fx = (gp[m].k_vector[X]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wx = (sin(fx)/fx)*(sin(fx)/fx)*(sin(fx)/fx);
	  //wx = GV.CellSize * (sin(fx)/fx)*(sin(fx)/fx); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wx = 1.0;
	}//else
      
      /*----- Weight function in y -----*/
      if(fabs(gp[m].k_vector[Y]) > GV.ZERO)
	{
	  fy = (gp[m].k_vector[Y]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wy = (sin(fy)/fy)*(sin(fy)/fy)*(sin(fy)/fy);
	  //wy = GV.CellSize * (sin(fy)/fy)*(sin(fy)/fy); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wy = 1.0;
	}//else
      
      /*----- Weight function in z -----*/
      if(fabs(gp[m].k_vector[Z]) > GV.ZERO)
	{
	  fz = (gp[m].k_vector[Z]*GV.BoxSize)/(2.0*GV.NCELLS);
	  wz = (sin(fz)/fz)*(sin(fz)/fz)*(sin(fz)/fz);
	  //wz = GV.CellSize * (sin(fz)/fz)*(sin(fz)/fz); //According to H&E but we are not using this
	}//if 1
      else
	{
	  wz = 1.0;
	}//else
      
      /*----- Total weight function -----*/
      gp[m].weight = wx * wy * wz;

      
      /*----- Deconvolution of DenCon with the total weight function -----*/        
      if(fabs(gp[m].weight) > GV.ZERO)
	{
	  gp[m].DenCon_K[0] = gp[m].DenCon_K[0] / gp[m].weight;
	  gp[m].DenCon_K[1] = gp[m].DenCon_K[1] / gp[m].weight;
	}//if
      else
	{
	  gp[m].DenCon_K[0] = 0.0;
	  gp[m].DenCon_K[1] = 0.0;	  
      }//else
      
    }//for m

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

  printf("FFT_transform code finished!\n");
  printf("--------------------------------------------------\n");

  return 0;
}//transform
