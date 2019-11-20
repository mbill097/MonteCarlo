#include <stdlib.h>
#include <stdio.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#define SEED 83223123

double Calculate_Pi_Sequential(long int n) {

    srand(SEED);
    long count;
    double x, y;
    count = 0;
    for(int i=0;i<n;i++){
        x=(double)rand()/RAND_MAX;
        y=(double)rand()/RAND_MAX;
        if (x*x + y*y <= 1.0)
        {
            count++;
        }
    }
    return (double)count/n*4;
}

long count;

long double Calculate_Pi_Parallel(long int n) {

    double x, y;
    srand(SEED);
    //omp_set_num_threads(4);

#pragma omp for reduction(+:count) private(x,y)
    for (int i=0; i<n; i++)              //main for loop
    {
        x = (double)rand()/RAND_MAX;      //gets a random x coordinate
        y = (double)rand()/RAND_MAX;      //gets a random y coordinate
        if (x*x + y*y <= 1.0) count++;
    }

    return (double)count/n*4; // Return value

}

int main() {

    double sequential_pi, parallel_pi;
    struct timeval start, end;
    long int n;
    n = 10000000;
    gettimeofday(&start, NULL);
    printf("Timing sequentiona1...\n");
    sequential_pi = Calculate_Pi_Sequential(n);  // get Sequential value
    gettimeofday(&end, NULL);
    printf("Took %.6f seconds\n\n", end.tv_sec - start.tv_sec + (double) (end.tv_usec - start.tv_usec) / 1000000L);
    printf("Timing parallel...\n");
    gettimeofday(&start, NULL);
    parallel_pi = Calculate_Pi_Parallel(n); // get Parallel value
    gettimeofday(&end, NULL);
    printf("Took %.6f seconds\n\n", end.tv_sec - start.tv_sec + (double) (end.tv_usec - start.tv_usec) / 1000000L);

    printf("π = %.10f (sequential)\n", sequential_pi);  // print  sequential value
    printf("π = %.10f (parallel)\n", parallel_pi); // print  parallel value

    return 0;
}