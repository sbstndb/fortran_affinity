ifort -c f.f
icc -c c.c
ifort f.o c.o -o main
./main
