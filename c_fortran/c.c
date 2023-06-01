// file: c_function.c

#include <stdio.h>

void c_function(int* array, int n) {
  int i;
  for(i = 0; i < n; i++) {
    printf("%d\n", array[i]);
  }
}
