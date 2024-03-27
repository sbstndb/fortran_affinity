ifort -c f.f90
icc -c c.c
ifort f.o c.o -o main
./main
