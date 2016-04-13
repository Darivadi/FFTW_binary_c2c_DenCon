/*********************************************************************
Index conventions:
i = x axis
j = y axis
k = z axis
l = particle
m = grid cell  
*********************************************************************/


/********************************************************************
                                   UNITS

Frame's time = 1
Redshift = 0
Flagsfr = 0
Flagsfed = 0
Flagcool = 0
numfiles = 1
Box Size = 1
Matter density parameter \Omega_{m,0} = 0.258
Dark energy density parameter \Omega_{\Lambda,0} = 0.742
Hubble's parameter h = 0.72
Hubble's constant H_0 = 100/h
Particle's mass = 3.41454 (* 10^{10} M_{Sun}/h)
Total number of particles = 134217728 (512^3)
Mass unit = 1 * 10^{10} M_{Sun}/h
Lenght unit = 1 Mpc/h
Gravitational constant in the interal units G = 43.0071
 *******************************************************************/


/*****************************************************************
                            STRUCTURES
******************************************************************/

struct grid
{  
  /*+++ Mass density in r-space and k-space and wave vectors +++*/
  double DenCon_K[2];       /* Density contrast in Fourier space deconvolved with weight function. 
			       [0] is real, [1] imaginary */
  double k_vector[3];       // Wave vector components in c-order
  double k_module;          // Wave vector module in c-order
  double weight;             // Weight function for the mass assignment scheme
  double k_mod_sin;         //Discretized module of k vector
  
  /*+++ Velocities and momentum density +++*/
  double p_w_k[3][2];   /* Momentum density (from v_cm) in k-space.  [0][i] is X,                                            
                         [1][i] is Y, [2][i] is Z.  [i][0] is Re(),                                             
                         [i][1]  is Im(). This momentum is deconvolved with 
			 the weight function of the mass assignment scheme */

  /*+++ Potential and its time derivative +++*/
  double potDot_k[2];     /* pot_dot_k; Potential's time derivative in                                          
                             k-space, FFTW[p] order.  [0] is Re(), [1]                                          
                             is Im() */

  /*+++ Linear approximation for the time derivative of the potential +++*/
#ifdef POTDOTLINEAR
  double potDot_k_l_app1[2]; /*Time derivative of gravitational potentia in 
			       k-space with linear approximation. [0] is 
			       Re(), [1] is Im() */

  double potDot_k_l_app2[2]; /* Time derivative of gravitational potentia in 
				k-space with linear approximation. [0] is 
				Re(), [1] is Im() */
#endif

}*gp; //grid


struct GlobalVariables
{
  char FILENAME[1000]; //Path of the data file
  
  /*+++ Grid constants +++*/
  int Total_NParts; // Total number of particles
  double BoxSize;      // Size of the simulation box in one axis (all must be the same)
  int NCELLS;       // Number of cells in one axis
  int NTOTALCELLS;  // Total number of cell
  double Mpart;     // Mass of the particles
  double CellSize;  // Size of the cell
  double ZERO;      // Zero for the computer
  double r2k_norm;  // Normalization factor from r2k
  double k2r_norm;  // Normalization factor from k2r
 
  /*+++ Cosmological Parameters +++*/
  double H0;      //= 100.0 Hubble's constant in the inner units
  double z_RS;    // = 0.0 Redshift of the simulation
  double a_SF;    // Scale factor's time derivative
  double Hz;      //Hubble's parameter a_dot/a
  double Omega_M0; //= 0.258 Density parameter of matter
  double Omega_L0; //= 0.742 Density parameter of cosmological constant
  double MeanDen; // MeanDens;= 7.160809 Units *1E10 M_Sun/h

}GV;//globalVariables


/***************************************************************
                       DEFINITIONS
 ***************************************************************/
#define X 0
#define Y 1
#define Z 2
#define INDEX_C_ORDER(i,j,k) (k)+GV.NCELLS*((j)+GV.NCELLS*(i)) //Index in C-order
