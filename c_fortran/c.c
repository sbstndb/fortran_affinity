#include <inttypes.h>
#include <stdio.h>



void c_function(int64_t* array, int64_t n) {
  int64_t i;
  for(i = 0; i < n; i++) {
    printf("%d\n", array[i]);
  }
}
