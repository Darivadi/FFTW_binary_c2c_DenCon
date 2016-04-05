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
#include "FFT_momentum_den_cm.c"
#include "FFT_pot_dot.c"
#include "FFT_potDot_linear.c"
 

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
  
  if(argc < 2)
    {
      printf("Error: Incomplete number of parameters. Execute as follows:\n");
      printf("%s Parameters_file\n", argv[0]);
      exit(0);
    }//if   

  infile     = argv[1];             // Parameters file

  /*+++++ Reading parameters file +++++*/  
  read_parameters( infile );

  /*+++++ Some variables +++++*/
  //GV.ZERO         = 1.0e-30;
  GV.ZERO         = 1.0e-300;
  GV.NTOTALCELLS  = GV.NCELLS*GV.NCELLS*GV.NCELLS;
  printf("Variables are ready to use!\n");
  printf("-----------------------------------------------------------------\n");

  /*--- MEMORY ALLOCATION ---*/
  gp = (struct grid *) malloc((size_t) GV.NTOTALCELLS*sizeof(struct grid));

  /*+++++ Reading binary file +++++*/
#ifdef BINARYDATA
  read_binary();
  printf("Binary data file has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");
#endif

#ifdef ASCIIDATA  
  /*--- READING ASCII DATAFILE ---*/
  read_data( GV.FILENAME );
  printf("Ascii data file has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");
#endif

  
  /*+++++ Hubble's constant in terms of redshift +++++*/
  GV.Hz      = GV.H0 * sqrt(GV.Omega_L0 + GV.Omega_M0 * pow( (1+GV.z_RS), 3 ) ); 
  GV.CellSize     = GV.BoxSize/(1.0*GV.NCELLS);
  
  printf("Simulation parameters\n");
  printf("GV.NCELLS:%12d GV.NTOTALCELLS:%12d\n" 
	 "GV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n", 
	 GV.NCELLS,
	 GV.NTOTALCELLS,
	 GV.BoxSize,
	 GV.CellSize);

  printf("----------------------------------------------------------------\n");
  printf("Cosmological parameters\n");
  printf("GV.z_RS=%lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n", 
	 GV.z_RS,
	 GV.H0, 
	 GV.Hz, 
	 GV.a_SF);
  printf("-----------------------------------------------------------------\n");
  

  /*--- FFT OF THE DENSITY CONTRAST ---*/
  transform(); //In C-order
  printf("FFT of density contrast finished!\n");
  printf("-----------------------------------------------------------------\n");

  
  /*--- FFT OF GRAVITATIONAL POTENTIAL ---*/
  potential(); //In C-order
  printf("FFT of gravitational potential finished!\n");
  printf("-----------------------------------------------------------------\n");

  
  
#ifdef POTDOTEXACT
  /*--- FFT OF THE MOMENTUM OF THE CENTER OF MASS IN EACH AXIS ---*/
  //momentum_den_cm(); //In C-order                                                                               
  printf("FFT of momentum finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  
  /*--- FFT OF THE TIME DERIVATIVE OF THE POTENTIAL ---*/
  potential_dot(); //In C-order                                                                                 
  printf("FFT of time derivative of gravitational potential finished!\n");
  printf("-----------------------------------------------------------------\n");
#endif
  

  /*--- FFT OF THE LINEAR APPROXIMATIONS TO THE ---
    --- TIME DERIVATIVE OF THE POTENTIAL        ---*/
#ifdef POTDOTLINEAR
  potential_dot_linear(); //In C-order
  printf("FFT of time derivative of gravitational potential in linear approximation finished!\n");
  printf("-----------------------------------------------------------------\n");
#endif

  /*--- FINISHING THE FFTs ---*/
  printf("All FFT transforms have finished succesfully!\n");
  printf("-----------------------------------------------------------------\n");
  
  
  /*--- SAVING OUTPUT DATA FILE WITH REAL PARTS ---*/
#ifdef ASCIIDATA
  /*
  pf = fopen("/home/dvalencia/Simulation_400Mpc/FFT_code/Data/Sn150/PotDot_k_space.dat" ,"w");
  
  fprintf(pf, "%s%10s %12s %12s %12s %12s %12s %12s %12s %12s %12s %12s %12s %12s\n",
          "#", "Index", 
	  "kx", "ky", "kz", "W(k)",
	  "Re_kpx", "Im_kpx",
	  "Re_kpy", "Im_kpy",
	  "Re_kpz", "Im_kpz",
	  "Re_PotDot(k)", "Im_PotDot(k)");  

  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {           
      fprintf(pf, "%12d %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf\n", 
	      m, 
	      gp[m].k_vector[X], gp[m].k_vector[Y], gp[m].k_vector[Z], gp[m].weight_CIC,
	      gp[m].p_w_k[X][0], gp[m].p_w_k[X][1],
	      gp[m].p_w_k[Y][0], gp[m].p_w_k[Y][1],
	      gp[m].p_w_k[Z][0], gp[m].p_w_k[Z][1],
	      gp[m].potDot_k[0], gp[m].potDot_k[1]);
    }//for m
  fclose(pf);
  */
  

  pf = fopen("/home/dvalencia/Simulation_400Mpc/FFT_code/Data/Sn150/Green_k.dat" ,"w");

  fprintf(pf, "%s%10s %12s %12s %12s %12s %12s %12s %12s\n",
          "#", "Index", 
	  "xc", "yc", "zc",
	  "Green(k)", "Green(r)",
	  "-1/k^2", "(-1/k^2)(r)"); 
  /*
  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      fprintf(pf, "%12d %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf\n",
	      m, 
	      gp[m].pos[X], gp[m].pos[Y], gp[m].pos[Z],	      
	      (-1.0/gp[m].k_mod_sin), gp[m].potDot_r[0],
	      (-1.0/(gp[m].k_module*gp[m].k_module) ), gp[m].potDot_r_l_app1[0]);
    }//for m
  fclose(pf);
  */
  
    pf = fopen("/home/dvalencia/Simulation_400Mpc/FFT_code/Data/Sn150/DenCon_Potential_PotDot_fields_k_HENorm.dat" ,"w");

  fprintf(pf, "%s%10s %12s %12s %12s %12s %12s %12s %12s %12s %12s %12s %12s\n",
          "#", "Index", 
	  "xc", "yc", "zc", "px", "py", "pz",
	  "DenCon(r)", "Pot(r)", "PotDot(r)",
	  "PotDot_l_app1(r)", "PotDot_l_app2(r)");  

  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {           
      fprintf(pf, "%12d %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf\n", 
	      m, 
	      gp[m].pos[X], gp[m].pos[Y], gp[m].pos[Z],
	      gp[m].p_r[X], gp[m].p_r[Y], gp[m].p_r[Z],
	      gp[m].DenConCell,
	      gp[m].poten_r[0],
	      gp[m].potDot_r[0],
	      gp[m].potDot_r_l_app1[0],
	      gp[m].potDot_r_l_app2[0]);      
    }//for m
  fclose(pf);
  
#endif  

  /*--- Output datafile with imaginary parts ---*/  
#ifdef IMAGINARYPARTS  
  pf = fopen("Imaginary_parts.dat", "w");
  
  fprintf(pf, "#CellID\t xcm\t ycm\t zcm\t Im(Pot(r))\t Im(PotDot(r))\t Im(PotDot_l(r))\t Im(PotDot_l_app1(r))\t Im(PotDot_l_app2(r))\n");
  
  for(m=0; m<GV.NTOTALCELLS; m++)
    {	      
      fprintf(pf, "%12d %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf %16.8lf\n", 
	      m, 
	      gp[m].pos[X], gp[m].pos[Y], gp[m].pos[Z], 
	      gp[m].poten_r[1],	      
	      gp[m].potDot_r_l_app1[1],
	      gp[m].potDot_r_l_app2[1]);  
    }//for m

  fclose(pf);
#endif

  
#ifdef BINARYDATA
  write_binary();
  printf("Binary file saved!\n");
  printf("--------------------------------------------------\n");
#endif
  

  /*--- FREEING UP MEMORY---*/
  free(gp);

  printf("-----------------------------------------------------------------\n");
  printf("All codes have run succesfully!\n");
  printf("FFT code finished!\n");
  printf("-----------------------------------------------------------------\n");
  
  return 0;
}//main
