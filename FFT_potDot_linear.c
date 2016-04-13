/****************************************************************************************************
NAME: growth_rate_OmegaL0
FUNCTION: Computes the growth rate f(t) for first linear approx. proportional to Omega_Lambda0
INPUT: Scale factor
RETURN: Growth rate f(t) for first approx. proportional to Omega_Lambda0
****************************************************************************************************/

double growth_rate_OmegaL0(double a_SF)
{ 
  double GR_OmegaL0, a_cube;  
  a_cube = pow(a_SF, 3.0);
  GR_OmegaL0 = 1.0/( pow( (1.0+GV.Omega_L0*a_cube), 0.6) );

  printf("-----------------------------------------------------------------\n");
  printf("First approximation to f(t)\n");
  printf("OmegaL0=%lf,  growth rate f(t)=%lf\n", 
	 GV.Omega_L0, GR_OmegaL0);
  printf("-----------------------------------------------------------------\n");

  return GR_OmegaL0;
  
}//growth_rate_app1


/****************************************************************************************************
NAME: growth_rate_OmegaM
FUNCTION: Computes the growth rate f(t) for second linear approx. proportional to Omega_M(a)
INPUT: Scale factor
RETURN: Growth rate f(t) for second linear approx. proportional to Omega_M(a)
****************************************************************************************************/

double growth_rate_OmegaM(double a_SF)
{ 
  double OmegaM_ofa, mu, GR_OmegaM, z;
  
  mu = a_SF * pow((GV.Omega_L0/GV.Omega_M0), 1.0/3.0);
  OmegaM_ofa = GV.Omega_M0 / ( (double) (1 + pow(mu, 3.0)) ); 
  GR_OmegaM = pow(OmegaM_ofa, 0.6);

  
  printf("-----------------------------------------------------------------\n");
  printf("Second approximation to f(t)\n");
  printf("mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n", 
	 mu, OmegaM_ofa, GR_OmegaM);
  printf("-----------------------------------------------------------------\n");
  
  return GR_OmegaM;
}//growth_rate_app2


/****************************************************************************************************
NAME: potential_dot_linear                                                                                      
FUNCTION: Calculates the time derivative of the gravitational potential the k-space, and then with 
an IFFT calculates the time derivative of potential in the position's space.  This is performed in 
the linear approximations computed before.
INPUT: None
RETURN: none
****************************************************************************************************/

/****** COMPUTING LINEAR POTDOT ******/
int potential_dot_linear( double **potDot_r_l_app1, double **potDot_r_l_app2 )
{  
  int m, i, j, k;
  double pos_aux[3];
  double alpha, fn_app1, fn_app2, factor;
  double Green_factor;
  FILE *pf1=NULL, *pf2=NULL;
  
  /*+++++ FFTW DEFINITIONS +++++*/
  fftw_complex *in=NULL;
  fftw_complex *in2=NULL;
  fftw_complex *out=NULL;
  fftw_plan plan_k2r; // FFTW from k-space to r-space
  fftw_plan plan_r2k; // FFTW from r-space to k-space
  

  /*----- Computing the approximations to the linear growth rate f -----*/
  fn_app1 = 1.0 - ( growth_rate_OmegaL0(GV.a_SF) );
  fn_app2 = 1.0 - ( growth_rate_OmegaM(GV.a_SF) );  

  printf("GR_OmegaL0=%lf GR_OmegaM=%lf a_SF=%lf\n", 
	 growth_rate_OmegaL0(GV.a_SF), growth_rate_OmegaM(GV.a_SF), GV.a_SF);
  printf("---------------------------------------\n");
 

  /*----- Computing the time derivative of potential in k-space -----*/
  factor = (-3.0/2.0) * GV.H0 * GV.H0 * (GV.Hz / GV.a_SF) * GV.Omega_M0;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if(gp[m].k_mod_sin > GV.ZERO)
  	{
  	  Green_factor = -1.0 / gp[m].k_mod_sin;
  	  alpha = factor * Green_factor;
	  
	  /*::::: Approximation proportional to 1/\Omega_{L0} :::::*/
  	  gp[m].potDot_k_l_app1[0] = alpha * gp[m].DenCon_K[0] * fn_app1; //Re()
  	  gp[m].potDot_k_l_app1[1] = alpha * gp[m].DenCon_K[1] * fn_app1; //Im()
	  
	  /*::::: Aproximation proportional to \Omega_M(a) :::::*/
  	  gp[m].potDot_k_l_app2[0] = alpha * gp[m].DenCon_K[0] * fn_app2; //Re()
  	  gp[m].potDot_k_l_app2[1] = alpha * gp[m].DenCon_K[1] * fn_app2; //Im()	  
  	}//if
      else
  	{
  	  gp[m].potDot_k_l_app1[0] = 0.0;
  	  gp[m].potDot_k_l_app1[1] = 0.0;
  	  gp[m].potDot_k_l_app2[0] = 0.0;
  	  gp[m].potDot_k_l_app2[1] = 0.0;
  	}//else
      Green_factor = 0.0;
      
    }//for m
  
  //factor = (3.0/2.0) * GV.H0 * GV.H0 * (GV.Hz / GV.a_SF) * GV.Omega_M0;
  //for( m=0; m<GV.NTOTALCELLS; m++ )
  //{
  // if( fabs(gp[m].k_module) > GV.ZERO )
  //	{
  //	  alpha = -1.0 / (gp[m].k_module * gp[m].k_module);//factor / (gp[m].k_module * gp[m].k_module);
    
  	  /*::::: Approximation proportional to 1/\Omega_{L0} :::::*/
  //	  gp[m].potDot_k_l_app1[0] = alpha ;//* gp[m].DenCon_K[0] * fn_app1; //Re()
  //	  gp[m].potDot_k_l_app1[1] = alpha ;//* gp[m].DenCon_K[1] * fn_app1; //Im()
  	  
  	  /*::::: Aproximation proportional to \Omega_M(a) :::::*/
  //	  gp[m].potDot_k_l_app2[0] = alpha * gp[m].DenCon_K[0] * fn_app2; //Re()
  //	  gp[m].potDot_k_l_app2[1] = alpha * gp[m].DenCon_K[1] * fn_app2; //Im()  
  //	}//if
  //  else
  //    {
  //      gp[m].potDot_k_l_app1[0] = 0.0;
  //	gp[m].potDot_k_l_app1[1] = 0.0;
	
  //	gp[m].potDot_k_l_app2[0] = 0.0;
  //	gp[m].potDot_k_l_app2[1] = 0.0;	  
  //  }//else
    
  //}//for m
  
  printf("Time derivative of potential in k-space saved!\n");
  printf("--------------------------------------------------\n");


  /**************************************************************************************/
  /* Linear PotDot with the first approximation to the linear growth rate f */
  /**************************************************************************************/
  /*+++++ Creating input/output  arrays +++++*/
  in  = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );
    
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {      
      in[m][0] = gp[m].potDot_k_l_app1[0];
      in[m][1] = gp[m].potDot_k_l_app1[1]; 
    }//for m
  

  /*+++++ Making the FFT +++++*/
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute(plan_k2r);  
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");
   
  
  /*+++++ Saving data +++++*/
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r_l_app1[m][0] = GV.k2r_norm * out[m][0]; //Re()
      //potDot_r_l_app1[m][1] = GV.k2r_norm * out[m][1]; //Im()	     
    }//for m

  /*+++++ Recreating input array +++++*/
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );  
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );  
  */  

  /*+++++ Saving recreated input array in .dat file +++++*/
  /*
  pf = fopen( "Pot-dot_FFTW-in.dat", "w" );
  fprintf(pf,"#p\t Re(in2_k)\t Im(in2_k)\t Re(in_k)\t Im(in_k)\n");
  
  for( m=0; m<GV.NTOTALCELLS; M++ )
    {
      fprintf(pf, "%12d\t %20.8lf %20.8lf %20.8lf %20.8lf\n", p,
	      in2[m][0] / (1.0*GV.NTOTALCELLS ), in2[m][1] / (1.0*GV.NTOTALCELLS),
	      in[m][0], in[m][1] );
    }  
  fclose(pf);
  */

  free(in);
  //fftw_free(in2);
  fftw_free(out);
  

  /**************************************************************************************/
  /* Linear PotDot with the second approximation to the linear growth rate f */
  /**************************************************************************************/
  /*+++++ Creating input/output  arrays +++++*/
  in  = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );
    
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {      
      in[m][0] = gp[m].potDot_k_l_app2[0];
      in[m][1] = gp[m].potDot_k_l_app2[1]; 
    }//for m
  

  /*+++++ Making the FFT +++++*/
  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, FFTW_BACKWARD, FFTW_ESTIMATE );
  fftw_execute(plan_k2r);  
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");
   
  
  /*+++++ Saving data +++++*/
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r_l_app2[m][0] = GV.k2r_norm * out[m][0]; //Re()
      //potDot_r_l_app2[m][1] = GV.k2r_norm * out[m][1]; //Im()	     
    }//for m


  /*+++++ Recreating input array +++++*/
  /*
  in2 = (fftw_complex *) malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );  
  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, out, in2, FFTW_FORWARD, FFTW_ESTIMATE );
  fftw_execute( plan_r2k );  
  */  

  /*+++++ Saving recreated input array in .dat file +++++*/
  /*
  pf = fopen( "Pot-dot_FFTW-in.dat", "w" );
  fprintf(pf,"#p\t Re(in2_k)\t Im(in2_k)\t Re(in_k)\t Im(in_k)\n");
  
  for( m=0; m<GV.NTOTALCELLS; M++ )
    {
      fprintf(pf, "%12d\t %20.8lf %20.8lf %20.8lf %20.8lf\n", p,
	      in2[m][0] / (1.0*GV.NTOTALCELLS ), in2[m][1] / (1.0*GV.NTOTALCELLS),
	      in[m][0], in[m][1] );
    }  
  fclose(pf);
  */

  free(in);
  //fftw_free(in2);
  fftw_free(out);

  /*+++++ Finishing +++++*/
  fftw_destroy_plan( plan_k2r );
  //fftw_destroy_plan( plan_r2k );
  printf("FFT_pot_dot lineal code finished!\n");
  printf("--------------------------\n");

  printf("Saving data in binary file for both approximations\n");
  printf("--------------------------\n");


  pf1 = fopen("./../Processed_data/PotDot_app1.bin", "w");
  pf2 = fopen("./../Processed_data/PotDot_app2.bin", "w");
  
  /*+++++ Saving Simulation parameters +++++*/
  fwrite(&GV.BoxSize, sizeof(double), 1, pf1);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf1);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf1);  // Cosmological constant density parameter
  fwrite(&GV.z_RS, sizeof(double), 1, pf1);  // Redshift
  fwrite(&GV.H0, sizeof(double), 1, pf1);  // Hubble parameter

  fwrite(&GV.BoxSize, sizeof(double), 1, pf2);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf2);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf2);  // Cosmological constant density parameter
  fwrite(&GV.z_RS, sizeof(double), 1, pf2);  // Redshift
  fwrite(&GV.H0, sizeof(double), 1, pf2);  // Hubble parameter

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
	      
	      fwrite(&pos_aux[0], sizeof(double), 3, pf1);
	      fwrite(&potDot_r_l_app1[m][0], sizeof(double), 1, pf1);

	      fwrite(&pos_aux[0], sizeof(double), 3, pf2);
	      fwrite(&potDot_r_l_app2[m][0], sizeof(double), 1, pf2);
	    }//for k	  
	}//for j
    }//for i
  
  fclose(pf1);
  fclose(pf2);

  return 0;  
}//potential_dot_linear
