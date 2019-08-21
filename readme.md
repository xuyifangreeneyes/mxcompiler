# MxCompiler 2019

A compiler for the course [Compiler 2019](http://acm.sjtu.edu.cn/wiki/Compiler_2019) at ACM Class, SJTU. 

The source is a java-like language.
The target is x86-64 NASM.

With various optimizations, this compiler was ranked 3 / 47 in the performance competition of the course.

## Optimization
* Instruction selection
* Function inlining
* Static single assignment
    * most optimizations are done in SSA form
* Control flow analysis
    * redundant jump elimination
* Dataflow analysis
    * common sub-expression elimination
    * constant propagation and folding
    * dead code elimination
* Register Allocation
    * a full implementation of George, Lal; Appel, Andrew W. (May 1996). *"Iterated Register Coalescing“*


## Build
```
bash build.bash
```

## Usage
```
bash optim.bash < input.txt > output.txt
```
