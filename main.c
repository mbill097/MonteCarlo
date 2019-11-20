#include <stdlib.h>
#include <stdio.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <omp.h>

#define SEED 35791246
// Returns a random value between -1 and 1


long double Calculate_Pi_Sequential(long long number_of_tosses) {
    unsigned int seed = (unsigned int) time(NULL);
    printf("n =" ,number_of_tosses);
    return 0;
}

long double Calculate_Pi_Parallel(long long number_of_tosses) {
#pragma omp1 parallel num_threads(omp_get_max_threads())
    {
        unsigned int seed = (unsigned int) time(NULL) + (unsigned int) omp_get_thread_num();
        printf("n1 =" ,number_of_tosses);
    }
    return 0;
}

int main(int argc, char *argv[])
{
   int niter=3;
   double xCoordinate,yCoordinate;
   int i,count=0; /* # of points in the 1st quadrant of unit circle */
   double z;
   double pi;
  /* printf("This program to calculate the value of the mathematical constant PI using the Monte Carlo method.");
   printf("Enter the number of iterations used to estimate pi: ");
   scanf("%d",&niter);*/
   /* initialize random numbers */
   /*get rand values */
   rand();
   count=0;
   for (i=0; i<niter; i++) {
    xCoordinate = (double)rand()/RAND_MAX;
    yCoordinate = (double)rand()/RAND_MAX;
    z = xCoordinate*xCoordinate+yCoordinate*yCoordinate;
    if (z<=1) count++;
   }

long double sequential_pi = Calculate_Pi_Sequential(niter);
long double parallel_pi = Calculate_Pi_Parallel(niter);
pi=(double)count/niter*4;
printf("# of trials= %d , estimate of pi is %g \n",niter,pi);
    printf("π = %.10Lf (sequential)\n", sequential_pi);
    printf("π = %.10Lf (parallel)", parallel_pi);
    return 0;
}
