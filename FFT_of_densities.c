/*******************************************************************
                       HEADERS
*******************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <fftw3.h>


/*******************************************************************
                    SUPPORT FILES
*******************************************************************/
#include "FFT_variables.c"
#include "FFT_routines.c"
#include "FFT_transform.c"
#include "FFT_potential.c"

#ifdef POTDOTEXACT
#include "FFT_momentum_den_cm.c"
#include "FFT_pot_dot.c"
#endif

#ifdef POTDOTLINEAR
#include "FFT_potDot_linear.c"
#endif

/*************************************************************************************
NAME: main
FUNCTION: executes the read_data() and transform() functions
INPUT: data file
RETURN: none
*************************************************************************************/
int main( int argc, char *argv[] )
{
  int m, i, j, k;
  char *infile=NULL;
  FILE *pf=NULL;

  /*+++++ Declaring arrays for some important fields +++++*/
  double *DenConCell = NULL;
  //double *poten_r = NULL;  
  double **p_r = NULL; 

  /*  
#ifdef POTDOTEXACT
  double **potDot_r = NULL;
#endif
  

#ifdef POTDOTLINEAR
  double **potDot_r_l_app1 = NULL;
  double **potDot_r_l_app2 = NULL;
#endif  
  */

  if(argc < 2)
    {
      printf("Error: Incomplete number of parameters. Execute as follows:\n");
      printf("%s Parameters_file\n", argv[0]);
      exit(0);
    }//if   

  infile = argv[1];             // Parameters file
  
  /*+++++ Reading parameters file +++++*/  
  read_parameters( infile );
  
  /*+++++ Some variables +++++*/  
  GV.ZERO         = 1.0e-300;
  GV.NTOTALCELLS  = POW3(GV.NCELLS);
  printf("Variables are ready to use!\n");
  printf("-----------------------------------------------------------------\n");
  
  /*--- MEMORY ALLOCATION ---*/
  gp         = (struct grid *) malloc((size_t) GV.NTOTALCELLS*sizeof(struct grid));
  DenConCell = (double *) calloc(GV.NTOTALCELLS, sizeof(double) );
  
  
  /*+++++ Reading binary file +++++*/
#ifdef BINARYDATA
  read_binary(DenConCell, p_r);
  printf("Binary data file has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");
#endif


  /*+++++ Reading binary file from super_CIC code+++++*/
#ifdef SUPERCIC
  read_binary_super_CIC(DenConCell);
  printf("Binary data file from super_CIC has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");
#endif



  /*--- READING ASCII DATAFILE ---*/
#ifdef ASCIIDATA    
  read_data( GV.FILENAME,  DenConCell, p_r );
  printf("Ascii data file has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");
#endif

  
  /*+++++ Hubble's constant in terms of redshift +++++*/
  GV.Hz       = GV.H0 * sqrt(GV.Omega_L0 + GV.Omega_M0 * pow( (1+GV.z_RS), 3 ) ); 
  GV.CellSize = GV.BoxSize/(1.0*GV.NCELLS); //Size of each cell per axis
  
  printf("Simulation parameters\n");
  printf("GV.NCELLS:%12d GV.NTOTALCELLS:%12lu\n" 
	 "GV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n", 
	 GV.NCELLS,
	 GV.NTOTALCELLS,
	 GV.BoxSize,
	 GV.CellSize);

  printf("----------------------------------------------------------------\n");
  printf("Cosmological parameters\n");
  printf("GV.z_RS=%lf GV.h = %lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n", 
	 GV.z_RS,
	 GV.h_Hubble,
	 GV.H0, 
	 GV.Hz, 
	 GV.a_SF);
  printf("-----------------------------------------------------------------\n");
  

  /*----- Normalization factors for FT transforms -----*/
  GV.r2k_norm  = (GV.BoxSize * GV.BoxSize * GV.BoxSize ) / (1.0 * GV.NTOTALCELLS);
  GV.k2r_norm  = 1.0 / ( GV.BoxSize * GV.BoxSize * GV.BoxSize );
  GV.fftw_norm = 1.0 / sqrt(GV.NTOTALCELLS);
  GV.conv_norm = 1.0 / ( (2*M_PI)*(2*M_PI)*(2*M_PI) );

  printf("r2k norm = %lf, k2r norm = %lf\n", GV.r2k_norm, GV.k2r_norm);
  printf("r2k 1D = %lf\n", GV.BoxSize / (1.0*GV.NCELLS) );
    

  /*--- FFT OF THE DENSITY CONTRAST ---*/
  transform( DenConCell ); //In C-order
  printf("FFT of density contrast finished!\n");
  printf("-----------------------------------------------------------------\n");

     
  /*--- FFT OF GRAVITATIONAL POTENTIAL ---*/
  //poten_r = (double *) calloc(GV.NTOTALCELLS, sizeof(double) );  

  //potential( poten_r ); //In C-order  
  potential(); //In C-order  
  //free(poten_r);
  printf("FFT of gravitational potential finished!\n");
  printf("-----------------------------------------------------------------\n");


  /*--- FFT OF THE LINEAR APPROXIMATIONS TO THE ---
    --- TIME DERIVATIVE OF THE POTENTIAL        ---*/
#ifdef POTDOTLINEAR
  /*
  potDot_r_l_app1 = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));
  potDot_r_l_app2 = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      potDot_r_l_app1[m] = (double *) calloc(2, sizeof(double));
      potDot_r_l_app2[m] = (double *) calloc(2, sizeof(double));
    }//for m 
  */
    
  potential_dot_linear(); //In C-order
  //potential_dot_linear(potDot_r_l_app1, potDot_r_l_app2); //In C-order
  //free(potDot_r_l_app1);
  //free(potDot_r_l_app2);
  printf("FFT of time derivative of gravitational potential in linear approximation finished!\n");
  printf("-----------------------------------------------------------------\n");
#endif


    /*--- FFT OF THE EXACT SOLUTION TO THE ---
      --- TIME DERIVATIVE OF THE POTENTIAL ---*/ 

#ifdef POTDOTEXACT
  /*::::: For each cell, it's necessary to allocate memory for 3 momentum 
    components and 2 for potdot, i.e., real and imaginary parts :::::*/
  
  
  /*--- FFT OF THE MOMENTUM OF THE CENTER OF MASS IN EACH AXIS ---*/
  p_r = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      p_r[m] = (double *) calloc(3, sizeof(double));     
    }//for m 

# ifdef SUPERCIC
  read_vels( p_r );
  printf("Velocities from superCIC read!\n");
  printf("-----------------------------------------------------------------\n");
# endif

  momentum_den_cm( p_r ); //In C-order 
  printf("FFT of momentum finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  
  /*--- FFT OF THE TIME DERIVATIVE OF THE POTENTIAL ---*/
  /*
  potDot_r = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {      
      potDot_r[m] = (double *) calloc(2, sizeof(double));
    }//for m 
  */

  potential_dot(); //In C-order 
  //potential_dot( potDot_r ); //In C-order 
  //free(potDot_r);
  printf("FFT of time derivative of gravitational potential finished!\n");
  printf("-----------------------------------------------------------------\n");
#endif
  

  /*--- FINISHING THE FFTs ---*/
  printf("All FFT transforms have finished succesfully!\n");
  printf("-----------------------------------------------------------------\n");
  

  /*--- FREEING UP MEMORY---*/
  free(gp);

  printf("-----------------------------------------------------------------\n");
  printf("All codes have run succesfully!\n");
  printf("FFT code finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  return 0;
}//main
