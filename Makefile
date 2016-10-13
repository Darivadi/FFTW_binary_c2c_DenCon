CC = gcc

#CFLAGS = -O3 -I/home/$(USER)/local/include -I/usr/include/ -DCIC -DASCIIDATA -DPOTDOTEXACT -DPOTDOTLINEAR
CFLAGS = -O3 -I/home/$(USER)/local/include -I/usr/include/ -DCIC -DBINARYDATA -DBINARYPARAMS -DPOTDOTEXACT -DPOTDOTLINEAR -DCIC_400
#CFLAGS = -O3 -I/home/$(USER)/local/include -I/usr/include/ -DNGP -DASCIIDATA -DPOTDOTEXACT -DPOTDOTLINEAR -DNGP_400

CFLAGSMDR = -O3 -I/home/$(USER)/local/include -I/usr/include/ -DCIC -DASCIIDATA -DPOTDOTLINEAR -DCIC_MDR

CFLAGSMDPL = -O3 -I/home/$(USER)/local/include -I/usr/include/ -DCIC -DBINARYPARAMS -DPOTDOTEXACT -DPOTDOTLINEAR -DSUPERCIC

CFLAGSDEBUG = -g -Wall -c -I/home/$(USER)/local/include/ -I/usr/include/ -DCIC -DBINARYDATA	

CFLAGSASCII = -g -Wall -c -I/home/$(USER)/local/include/ -I/usr/include/ -DCIC -DASCIIDATA

LFLAGS = -L$(HOME)/local/lib

PROGRAM = FFT_of_densities


$(PROGRAM):	
	#$(CC) -c -save-temps $@.c $(CFLAGS)
	$(CC) -c $@.c $(CFLAGS)
	$(CC) $@.o -lm -lfftw3 $(LFLAGS) -o $@.x


debug:
	echo Compiling for debug $(PROGRAM).c
	$(CC) $(CFLAGSDEBUG) $(PROGRAM).c -o $(PROGRAM).o
	$(CC) $(PROGRAM).o $(LFLAGS) -lm -lfftw3 -o $(PROGRAM).x

MDR:
	echo Compiling for MDR $(PROGRAM).c
	$(CC) -c -save-temps $(CFLAGSMDR) $(PROGRAM).c -o $(PROGRAM).o
	$(CC) $(PROGRAM).o $(LFLAGS) -lm -lfftw3 -o $(PROGRAM).x

MDPL:	
	echo Compiling for MDR $(PROGRAM).c
	$(CC) -c $(CFLAGSMDPL) $(PROGRAM).c -o $(PROGRAM).o
	$(CC) $(PROGRAM).o $(LFLAGS) -lm -lfftw3 -o $(PROGRAM).x

clean:
	rm -rf $(PROGRAM)
	rm -rf *~
	rm -rf *.out
	rm -rf *#
	rm -rf *.o
	rm -rf *.a
	rm -rf *.i
	rm -rf *.so
	rm -rf *.x
