#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#define SEED 35791246

main(int argc, char* argv)
{
   int niter=0;
   double xCoordinate,yCoordinate;
   int i,count=0; /* # of points in the 1st quadrant of unit circle */
   double z;
   double pi;
   printf("This program to calculate the value of the mathematical constant PI using the Monte Carlo method.");
   printf("Enter the number of iterations used to estimate pi: ");
   scanf("%d",&niter);
   /* initialize random numbers */
   rand();
   count=0;
   for (i=0; i<niter; i++) {
    xCoordinate = (double)rand()/RAND_MAX;
    yCoordinate = (double)rand()/RAND_MAX;
    z = xCoordinate*xCoordinate+yCoordinate*yCoordinate;
    if (z<=1) count++;
}
pi=(double)count/niter*4;
printf("# of trials= %d , estimate of pi is %g \n",niter,pi);
}
