/****************************************************************************************************
NAME: conf2dump
FUNCTION: Reads the input file with parameters
INPUT: Parameters file
RETURN: 0
****************************************************************************************************/

int conf2dump( char filename[] )
{
    char cmd[1000];
    int nread;
    /*
    sprintf( cmd, "grep -v \"#\" %s | grep -v \"^$\" | gawk -F\"=\" '{print $2}' > %s.dump", 
	     filename, filename );
    */
    sprintf( cmd, "grep -v \"#\" %s | grep -v \"^$\" | gawk -F\"=\" '{print $2}' > %s.dump", 
	     filename, filename );
    nread = system( cmd );

    return 0;
}


/****************************************************************************************************
NAME: read_parameters
FUNCTION: Reads the parameters
INPUT: Parameters file
RETURN: 0
****************************************************************************************************/
int read_parameters( char filename[] )
{
  int nread;
  char cmd[1000], filenamedump[1000];
  FILE *file;
  
  /*+++++ Loading the file +++++*/
  file = fopen( filename, "r" );
  if( file==NULL )
    {
      printf( "  * The file '%s' doesn't exist!\n", filename );
      return 1;
    }
  fclose(file);
  
  /*+++++ Converting to plain text +++++*/
  conf2dump( filename );
  sprintf( filenamedump, "%s.dump", filename );
  file = fopen( filenamedump, "r" );
  
  /*+++++ Parameters for binary data +++++*/
#ifdef BINARYDATA
  nread = fscanf(file, "%d", &GV.NCELLS);
  nread = fscanf(file, "%s", GV.FILENAME);    
#endif


  /*+++++ Parameters for ASCII data +++++*/
#ifdef ASCIIDATA
  /*+++++ Simulation parameters +++++*/
  nread = fscanf(file, "%d", &GV.NCELLS);
  nread = fscanf(file, "%lf", &GV.BoxSize);
  nread = fscanf(file, "%s", GV.FILENAME);
  
  /*+++++ Cosmological parameters +++++*/  
  nread = fscanf(file, "%lf", &GV.Omega_M0);
  nread = fscanf(file, "%lf", &GV.Omega_L0);
  nread = fscanf(file, "%lf", &GV.z_RS);
  nread = fscanf(file, "%lf", &GV.H0);    
  GV.a_SF = 1.0/(1.0 + GV.z_RS); 
#endif

  fclose( file );
  
  printf( "  * The file '%s' has been loaded!\n", filename );
  printf("File to read is %s ", GV.FILENAME);
  printf("with %d cells per axis\n", GV.NCELLS);
  
  
  sprintf( cmd, "rm -rf %s.dump", filename );
  nread = system( cmd );
  
  return 0;
}


/**************************************************************************
NAME: read_data
FUNCTION: reads the input file 
INPUT: data file: data_complete_NCELLSXXX.dat (densities data file) 
RETURN: 0
*****************************************************************************/
#ifdef ASCIIDATA
int read_data(char *infile, double *DenConCell, double **p_r)
{
  int m, nread;
  FILE *pf=NULL;
  char buff[1000];
  double dummy;
  int dummy1;
  
  pf = fopen(infile, "r");

  /*+++ Ignoring the first line +++*/
  nread = fgets(buff, 1000, pf);

  /*+++ Reading from the second line +++*/
#ifdef NGP
  for(m=0; m<GV.NTOTALCELLS; m++)
    {      
      nread=fscanf(pf,"%lf %lf %lf %lf %lf %lf %lf %lf",
		   &dummy, &dummy, &dummy,
		   &p_r[m][X], &p_r[m][Y], &p_r[m][Z],
		   &DenConCell[m]);

      if(m%5000000==0)
	{
	  printf("%d %lf %lf %lf %lf\n",
		 m,
		 p_r[m][X], p_r[m][Y], p_r[m][Z],
		 DenConCell[m]);
	}//if


    }//for m
#endif 


#ifdef CIC_400
  for(m=0; m<GV.NTOTALCELLS; m++)
    {      
      nread=fscanf(pf,"%lf %lf %lf %lf %lf %lf %lf", 
		   &dummy, &dummy, &dummy,
		   &p_r[m][X], &p_r[m][Y], &p_r[m][Z],
		   &DenConCell[m]);

      if(m%5000000==0)
	{
	  printf("%d %lf %lf %lf %lf\n",
		 m,
		 p_r[m][X], p_r[m][Y], p_r[m][Z],
		 DenConCell[m]);
	}//if
      
    }//for m
#endif
  
  
#ifdef CIC_MDR
  free(p_r);

  for(m=0; m<GV.NTOTALCELLS; m++)
    {      
      nread=fscanf(pf,"%d %lf %lf %lf %lf", 
		   &dummy1, &dummy, &dummy, &dummy,
		   &DenConCell[m]);
      
      if(m%5000000==0)
	{
	  printf("%d %lf\n",
		 m, DenConCell[m]);
	}//if
      
    }//for m
#endif
  
  fclose(pf);
  
  return 0;  
}//read_data
#endif


/**************************************************************************************************** 
NAME: read_binary
FUNCTION: Reads the binary data file
INPUT: None
RETURN: 0 
****************************************************************************************************/

int read_binary(double *DenConCell, double **p_r)
{
  int m, nread;
  double pos_aux[3];
  double dummy;
  FILE *inFile=NULL;
  
  inFile = fopen(GV.FILENAME, "r");

  /*+++++ Saving Simulation parameters +++++*/
  nread = fread(&GV.BoxSize, sizeof(double), 1, inFile);  //Box Size
  nread = fread(&GV.Omega_M0, sizeof(double), 1, inFile);  //Matter density parameter
  nread = fread(&GV.Omega_L0, sizeof(double), 1, inFile);  //Cosmological constant density parameter
  nread = fread(&GV.z_RS, sizeof(double), 1, inFile);  //Redshift
  nread = fread(&GV.H0, sizeof(double), 1, inFile);  //Hubble parameter

  GV.a_SF = 1.0 / (1.0 + GV.z_RS);

  printf("-----------------------------------------------\n");
  printf("Cosmological parameters:\n");
  printf("OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf\n",
	 GV.Omega_M0,
	 GV.Omega_L0,
	 GV.z_RS,
	 GV.H0);
  printf("-----------------------------------------------\n");

  printf("Simulation parameters:\n");
  printf("L=%lf\n",
	 GV.BoxSize);
  printf("-----------------------------------------------\n");


#ifdef CIC_400
  for(m=0; m<GV.NTOTALCELLS; m++ )
    {             
      nread = fread(&pos_aux[0], sizeof(double), 3, inFile);
      nread = fread(&p_r[m][0], sizeof(double), 3, inFile);
      nread = fread(&DenConCell[m], sizeof(double), 1, inFile);
      
      if(m%5000000==0)
	{
	  printf("Reading m=%d x=%lf y=%lf z=%lf px=%lf py=%lf pz=%lf DenCon=%lf\n", 
		 m, pos_aux[X], pos_aux[Y], pos_aux[Z],
		 p_r[m][X], p_r[m][Y], p_r[m][Z], 
		 DenConCell[m]);
	}//if
      
    }//for m
#endif
  
  
#ifdef CIC_MDR
  free(p_r);
  
  for(m=0; m<GV.NTOTALCELLS; m++ )
    {             
      nread = fread(&pos_aux[0], sizeof(double), 3, inFile);      
      nread = fread(&DenConCell[m], sizeof(double), 1, inFile);
      
      if(m%5000000==0)
	{
	  printf("Reading m=%d x=%lf y=%lf z=%lf DenCon=%lf\n", 
		 m, 
		 pos_aux[X], pos_aux[Y], pos_aux[Z], 
		 DenConCell[m]);
	}//if
      
    }//for m
#endif
  

  fclose(inFile);
  return 0;
}//read_binary



/****************************************************************************************************           
NAME: write_binary
FUNCTION: Writes binary data file
INPUT: none                                                                
RETURN: 0                                                                                                       
****************************************************************************************************/
/*
int write_binary(void)
{
  int i, nread;
  double pos_aux[3];
  FILE *outFile=NULL;
  outFile = fopen("./../Processed_data/DenCon_Pot_PotDot_fields_256.bin", "w");

  //+++++ Saving Simulation parameters +++++
  fwrite(&GV.BoxSize, sizeof(double), 1, outFile);  // Box Size
  fwrite(&GV.Omega_M0, sizeof(double), 1, outFile);  // Matter density parameter
  fwrite(&GV.Omega_L0, sizeof(double), 1, outFile);  // Cosmological constant density parameter
  fwrite(&GV.z_RS, sizeof(double), 1, outFile);  // Redshift
  fwrite(&GV.H0, sizeof(double), 1, outFile);  // Hubble parameter


  for(i=0; i<GV.NTOTALCELLS; i++ )
    { 
      fwrite(&gp[i].GID, sizeof(int), 1, outFile);
      
      //----- Positions -----
      pos_aux[X] = gp[i].pos[X];
      pos_aux[Y] = gp[i].pos[Y];
      pos_aux[Z] = gp[i].pos[Z];
      
      fwrite(&pos_aux[0], sizeof(double), 3, outFile);  // Cell position
      fwrite(&gp[i].DenConCell, sizeof(double), 1, outFile);  // Density contrast in cell
      fwrite(&gp[i].poten_r[0], sizeof(double), 1, outFile);  // Gravitational potential in cell
      fwrite(&gp[i].potDot_r[0], sizeof(double), 1, outFile);  // PotDot exact
      fwrite(&gp[i].potDot_r_l_app1[0], sizeof(double), 1, outFile);  // PotDot in first approximation
      fwrite(&gp[i].potDot_r_l_app2[0], sizeof(double), 1, outFile);  // PotDot in second approximation

    }//for i

  fclose(outFile);  
  return 0;  
}//write_binary
*/
