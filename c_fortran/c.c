#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <sched.h>
#include <stdint.h>
#include <inttypes.h>




void c_function(int64_t* array, int64_t n) {
  int64_t i;
  for(i = 0; i < n; i++) {
    printf("%d\n", array[i]);
  }
}


void set_affinity(int64_t* id_cpu , int64_t len) {

        unsigned long uns_id ;

        cpu_set_t my_set ;
        CPU_ZERO(&my_set) ;
        for (int64_t i = 0 ; i < len ; i++){
                uns_id = (unsigned long) id_cpu[i] ;
                CPU_SET(uns_id , &my_set);
        }
        sched_setaffinity(0, sizeof(cpu_set_t) , &my_set);
}





