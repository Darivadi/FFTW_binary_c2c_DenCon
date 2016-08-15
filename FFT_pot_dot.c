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
  int m, i, j, k, ii, jj, kk, indexaux, counter;
  double alpha, pot_Re1, pot_Re2, pot_Im1, pot_Im2, factor;
  double Green_factor, PotDotMean[2];
  double pos_aux[3];
  FILE *pf=NULL;
  //double nyquist_freq;

  /*+++++ For Trilinear Interpolation +++++*/
#ifdef TRILINEARINTERP
  double interp_dx, interp_dy, interp_dz;
  double x0, x1, y0, y1, z0, z1;
  double interp_dkx, interp_dky, interp_dkz;
  double kx0, kx1, ky0, ky1, kz0, kz1;
  int p000, p100, p110, p010, p001, p101, p111, p011;
  double c0, c1, c2, c3, c4, c5, c6, c7;
  double aux1, aux2;
#endif
  
  /*+++++ FFTW DEFINITIONS +++++*/
  fftw_complex *in=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  //fftw_complex *in2=NULL;
  //fftw_plan plan_r2k; // FFTW from r-space to k-space
  

  printf("Computing time derivative of potential in k-space!\n");
  printf("-----------------------------------------------------------------\n");

  /*+++ Creating input/output  arrays +++*/
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);

  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
  

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
	      //if(gp[m].k_mod_sin > GV.ZERO)
	      if(gp[m].k_mod_HE > GV.ZERO)
		{
		  
		  //Green_factor = -1.0 / gp[m].k_mod_sin;
		  Green_factor = -1.0 / gp[m].k_mod_HE;
		  alpha = factor * Green_factor;
		  
		  //gp[m].potDot_k[0] = alpha * ( pot_Re1 + pot_Re2 ); //Re()
		  //gp[m].potDot_k[1] = alpha * ( pot_Im1 + pot_Im2 ); //Im()
		  
		  in[m][0] =  alpha * ( pot_Re1 + pot_Re2 ); //Re()
		  in[m][1] = alpha * ( pot_Im1 + pot_Im2 ); //Im() 
		  
		}//if
	      else
		{		 			
		  //gp[m].potDot_k[0] = 0.0; //Re()
		  //gp[m].potDot_k[1] = 0.0; //Im()
		  in[m][0] = 0.0;
		  in[m][1] = 0.0;
		}//else      
	      
	      Green_factor = 0.0;
	      pot_Re1 = 0.0;
	      pot_Re2 = 0.0;
	      pot_Im1 = 0.0;
	      pot_Im2 = 0.0;
	      
	    }//for k
	}//for j 
    }//for i
  
  
  //First approximation to an interpolation in k = 0
  /*
  PotDotMean[0] = PotDotMean[1] = 0.0;
  counter = 0;
  i = j = k = 0;
  
  for(ii=-2; ii<=2; ii++)
    {
      for(jj=-2; jj<=2; jj++)
	{
	  for(kk=-2; kk<=2; kk++)
	    {
	      indexaux = INDEX_C_ORDER( mod(i+ii,GV.NCELLS),mod(j+jj,GV.NCELLS),mod(k+kk,GV.NCELLS) );
	      PotDotMean[0] += gp[indexaux].potDot_k[0];
	      PotDotMean[1] += gp[indexaux].potDot_k[1];
	      counter += 1;
	    }//for ii
	}//for jj
    }//for kk
  
  m = INDEX_C_ORDER(i,j,k);
  gp[m].potDot_k[0] = PotDotMean[0] / counter;
  gp[m].potDot_k[1] = PotDotMean[1] / counter;

  printf("******************************************************\n");
  printf("Average for m=%d, i=%d, j=%d, k=%d is :\n", m, i, j, k);
  printf("potDot_k[0] = %16.8lf potDot_k[1] = %16.8lf\n", gp[m].potDot_k[0], gp[m].potDot_k[1]);
  printf("Counter: %d\n", counter);
  printf("******************************************************\n");
  */

  
  /*+++++ Trilinear Interpolation +++++*/
#ifdef TRILINEARINTERP
  printf("******************************************************\n");
  printf("Computing trilinear interpolation\n");
  printf("******************************************************\n");

  //Indeces of each cell that is around the cell with index m=0 (i=j=k=0)
  p000 = GV.NTOTALCELLS - 1;
  p100 = 2*GV.NCELLS*GV.NCELLS - 1;
  p110 = GV.NCELLS*GV.NCELLS - 1;
  p010 = GV.NTOTALCELLS - GV.NCELLS*GV.NCELLS + 2*GV.NCELLS - 1;
  p001 = GV.NTOTALCELLS - GV.NCELLS + 1;
  p101 = 2*GV.NCELLS*GV.NCELLS - GV.NCELLS + 1;
  p111 = GV.NCELLS*GV.NCELLS + GV.NCELLS + 1;
  p011 = GV.NTOTALCELLS - GV.NCELLS*GV.NCELLS + GV.NCELLS + 1;
  
  printf("******************************************************\n");
  printf("Computed indeces\n");
  printf("p000=%d, p100=%d, p110=%d, p010=%d\n", p000, p100, p110, p010);
  printf("p001=%d, p101=%d, p111=%d, p011=%d\n", p001, p101, p111, p011);
  printf("******************************************************\n");
  
  
  /*+++++ dx, dy and dz from definition of trilinear interpolation. 
    x0 is the x-position of the p000 cell, while x1 is the x-position of the p100 cell (with y0 and z0)
    y0 is the y-position of the p000 cell, while y1 is the y-position of the p010 cell (with x0 and z0)
    y0 is the z-position of the p000 cell, while z1 is the z-position of the p001 cell (with x0 and y0)
    
    kx0 is the kx-component of the p000 cell, while kx1 is the kx-component of the p100 cell (with ky0 and kz0)
    ky0 is the ky-component of the p000 cell, while ky1 is the ky-component of the p010 cell (with kx0 and kz0)
    ky0 is the kz-component of the p000 cell, while kz1 is the kz-component of the p001 cell (with kx0 and ky0)
  +++++*/
  
  kx0 = gp[p000].k_vector[X];
  kx1 = gp[p100].k_vector[X];
  printf("kx0=%lf, kx1=%lf\n", kx0, kx1);

  ky0 = gp[p000].k_vector[Y];
  ky1 = gp[p010].k_vector[Y];
  printf("ky0=%lf, ky1=%lf\n", ky0, ky1);
  
  kz0 = gp[p000].k_vector[Z];
  kz1 = gp[p001].k_vector[Z];
  printf("kz0=%lf, kz1=%lf\n", kz0, kz1);
  
  printf("kx = %lf\n", gp[0].k_vector[X]);
  
  printf("kx1 - kx0 = %lf\n", kx1 - kx0);
  
  interp_dkx = ( fabs( gp[0].k_vector[X] - kx0 ) ) / ( fabs( kx1 - kx0 ) );
  interp_dky = ( fabs( gp[0].k_vector[Y] - ky0 ) ) / ( fabs( ky1 - ky0 ) );
  interp_dkz = ( fabs( gp[0].k_vector[Z] - kz0 ) ) / ( fabs( kz1 - kz0 ) );

  printf("******************************************************\n");
  printf("Computed deltas\n");
  printf("dkx=%lf, dky=%lf, dkz=%lf\n", interp_dkx, interp_dky, interp_dkz);
  printf("******************************************************\n");
  
  //Definition of the coefficients for interpolation
  /*----- First: Real part ----- */
  
  c0 = gp[p000].potDot_k[0];
  c1 = gp[p100].potDot_k[0] - gp[p000].potDot_k[0];
  c2 = gp[p010].potDot_k[0] - gp[p000].potDot_k[0];
  c3 = gp[p001].potDot_k[0] - gp[p000].potDot_k[0];
  c4 = gp[p110].potDot_k[0] - gp[p010].potDot_k[0] - gp[p100].potDot_k[0] + gp[p000].potDot_k[0];
  c5 = gp[p011].potDot_k[0] - gp[p001].potDot_k[0] - gp[p010].potDot_k[0] + gp[p000].potDot_k[0];
  c6 = gp[p101].potDot_k[0] - gp[p001].potDot_k[0] - gp[p100].potDot_k[0] + gp[p000].potDot_k[0];

  aux1 = gp[p111].potDot_k[0] - gp[p011].potDot_k[0] - gp[p101].potDot_k[0] - gp[p110].potDot_k[0];
  aux2 = gp[p100].potDot_k[0] + gp[p001].potDot_k[0] + gp[p010].potDot_k[0] - gp[p000].potDot_k[0];
  c7 =  aux1 + aux2;

  printf("******************************************************\n");
  printf("Computed coefficients for real part\n");
  printf("c0=%lf, c1=%lf, c2=%lf, c3=%lf\n", c0, c1, c2, c3);
  printf("c4=%lf, c5=%lf, c6=%lf, c7=%lf\n", c4, c5, c6, c7);
  printf("******************************************************\n");


  //Computing the interpolated value
  aux1 = c0 + c1 * interp_dkx + c2 * interp_dky + c3 * interp_dkz;
  aux2 = c4 * interp_dkx * interp_dky + c5 * interp_dky * interp_dkz + c6 * interp_dkx * interp_dkz;
  gp[0].potDot_k[0] =  aux1 + aux2 + c7 * interp_dkx * interp_dky * interp_dkz;
  

  /*----- Second: Imaginary part -----*/
  
  c0 = gp[p000].potDot_k[1];
  c1 = gp[p100].potDot_k[1] - gp[p000].potDot_k[1];
  c2 = gp[p010].potDot_k[1] - gp[p000].potDot_k[1];
  c3 = gp[p001].potDot_k[1] - gp[p000].potDot_k[1];
  c4 = gp[p110].potDot_k[1] - gp[p010].potDot_k[1] - gp[p100].potDot_k[1] + gp[p000].potDot_k[1];
  c5 = gp[p011].potDot_k[1] - gp[p001].potDot_k[1] - gp[p010].potDot_k[1] + gp[p000].potDot_k[1];
  c6 = gp[p101].potDot_k[1] - gp[p001].potDot_k[1] - gp[p100].potDot_k[1] + gp[p000].potDot_k[1];

  aux1 = gp[p111].potDot_k[1] - gp[p011].potDot_k[1] - gp[p101].potDot_k[1] - gp[p110].potDot_k[1];
  aux2 = gp[p100].potDot_k[1] + gp[p001].potDot_k[1] + gp[p010].potDot_k[1] - gp[p000].potDot_k[1];
  c7 =  aux1 + aux2;

  printf("******************************************************\n");
  printf("Computed coefficients for imaginary part\n");
  printf("c0=%lf, c1=%lf, c2=%lf, c3=%lf\n", c0, c1, c2, c3);
  printf("c4=%lf, c5=%lf, c6=%lf, c7=%lf\n", c4, c5, c6, c7);
  printf("******************************************************\n");


  //Computing the interpolated value
  aux1 = c0 + c1 * interp_dkx + c2 * interp_dky + c3 * interp_dkz;
  aux2 = c4 * interp_dkx * interp_dky + c5 * interp_dky * interp_dkz + c6 * interp_dkx * interp_dkz;
  gp[0].potDot_k[1] =  aux1 + aux2 + c7 * interp_dkx * interp_dky * interp_dkz;


  printf("******************************************************\n");
  printf("Interpolated value trough trilinear interoplation\n");
  printf("potDot_k[0] = %16.8lf potDot_k[1] = %16.8lf\n", gp[m].potDot_k[0], gp[m].potDot_k[1]);
  printf("******************************************************\n");
  

  
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
  
    printf("Trilinear interpolation finished\n");
  printf("-----------------------------------------------------------------\n");
  
#endif
  
  printf("Data time derivative of potential in k-space assigned!\n");
  printf("-----------------------------------------------------------------\n");

  
  /*+++ Creating input/output  arrays +++*/
  /*
  in  = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
    
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      in[m][0] = gp[m].potDot_k[0];
      in[m][1] = gp[m].potDot_k[1]; 
    }//for m
  */

  
  /*+++ Making the FFT +++*/
  //plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
  fftw_execute(plan_k2r);
  
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");
  
  
  /*+++++ Saving data +++++*/  
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      //potDot_r[m][0] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm; //Re()
      //potDot_r[m][1] = GV.k2r_norm * out[m][1]; //Im()       
      potDot_r[m][0] = GV.fftw_norm * out[m][0] / GV.r2k_norm; //Re()

    }//for m
   
  /*Recreating input array*/
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * nx * ny * nz );  
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );  
  */  

  fftw_destroy_plan( plan_k2r );
  //fftw_destroy_plan( plan_r2k );
  
  fftw_free(in);
  //fftw_free(in2);
  fftw_free(out);
  
  printf("FFT_pot_dot code finished!\n");
  printf("--------------------------\n");

  
  printf("Writing binary file with PotDot\n");
  printf("--------------------------\n");

  pf = fopen("./../../Processed_data/PotDot.bin", "w");
  //pf = fopen("./../../Processed_data/PotDot_Green_nokp.bin", "w");
  
  
#ifdef SUPERCIC
  fwrite(&GV.BoxSize,  sizeof(double), 1, pf);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf);  // Cosmological constant density parameter
  fwrite(&GV.z_RS,     sizeof(double), 1, pf);  // Redshift
  fwrite(&GV.H0,       sizeof(double), 1, pf);  // Hubble parameter
  fwrite(&GV.NCELLS,   sizeof(int),    1, pf);  // Hubble parameter
    
  for(m=0; m< GV.NTOTALCELLS; m++)
    {
      fwrite(&potDot_r[m][0], sizeof(double), 1, pf);
    }//for m

#endif


#ifdef CIC_400
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
#endif

  fclose(pf);

  free(potDot_r);
  
  return 0;
}//potential_dot
