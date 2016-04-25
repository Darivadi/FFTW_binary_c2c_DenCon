/********************************************************************
NAME: potential
FUNCTION: Calculates the potential of the contrast density in the k-space (from the FFT)in the grid[m] order, and then with an IFFT calculates the potential in the real space
INPUT: density contrast in the k-space
RETURN: File with the input and outputs (sorted in the grid[m] order)
**********************************************************************/
int potential(double *poten_r, double **poten_k)
{
  int m, i, j, k;
  double factor, pos_aux[3];
  double Green_factor, alpha;
  FILE *pf=NULL, *pf1=NULL;
  
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_r2k; // FFTW from r-space to k-space
    
    
  /*----- Computing the potential in k-space -----*/
  printf("Computing potential in k-space\n");
  printf("-----------------------------------------\n");

  //Factor of the potential
  //factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;
  factor = (3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if( gp[m].k_module > GV.ZERO )
	{
	  Green_factor  = - 1.0 / gp[m].k_mod_sin;
	  alpha         = Green_factor * factor;
	  
	  poten_k[m][0] = alpha * gp[m].DenCon_K[0]; //Re()
	  poten_k[m][1] = alpha * gp[m].DenCon_K[1]; //Im()

	  //poten_k[m][0] = factor * gp[m].DenCon_K[0]/(gp[m].k_module * gp[m].k_module); //Re()
	  //poten_k[m][1] = factor * gp[m].DenCon_K[1]/(gp[m].k_module * gp[m].k_module); //Im()
	}//if 
      else
	{
	  poten_k[m][0] = 0.0; //Re()
	  poten_k[m][1] = 0.0; //Im()
	}//else

      if(m%5000000==0)
	{
	  printf("%lf %lf\n", poten_k[m][0], poten_k[m][1]);
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
      in[m][0] = poten_k[m][0]; //Re()
      in[m][1] = poten_k[m][1]; //Im()
    }//for m

  
  /* Making the FFT */
  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
  fftw_execute( plan_k2r );
  
  printf("FFT potential k2r finished!\n");
  printf("---------------------------------------\n");
  
  /*Sorting and saving the output data */
  //First normalization I used
  
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      poten_r[m] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm; //Re()
      
      if(m%1000000==0)
	{
	  printf("%d %lf\n", m,  poten_r[m]);
	}//if
	          
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

  printf("Proceeding to the writing of binary file with potential field\n");
  printf("----------------------------\n");   
  

  pf = fopen("./../../Processed_data/Potential.bin", "w");

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
	      fwrite(&poten_r[m], sizeof(double), 1, pf);
            }//for k      
        }//for j
    }//for i

  /*  
  for(m=0; m< GV.NTOTALCELLS; m++)
    {
      fwrite(&poten_r[m], sizeof(double), 1, pf);
    }//for m
  */

  fclose(pf);

  free(poten_r);
  free(poten_k);

  return 0;
}//potential
