## Description
Here is a simple exemple in how to impose a process affinity in fortran. 
- Interface C and Fortran codes thanks to `iso_c_bindings`
- Call schedule affinity functions from POSIX compliant `sched.h` header

Then, we can entirely choose the affinity of the process. This is essential for High Performance executions for : 
- avoid context switching
- better thread/process hybrid execution. For instance, we often need to set each process in an unique NUMA nodes and spread threads in the corresponding NUMA node. 
## Compilation
```bash
cd src
. make.sh
```


## Execution
```
./main
```



