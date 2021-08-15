# Operating System from Scratch

Here is the link below 

https://www.cs.bham.ac.uk/~exr/lectures/opsys/10\_11/lectures/os-dev.pdf

compiling from assembly to binary

nasm <assembly> -f bin -o <binary>

to look at the binaries for an easy to read hexadecimal use. 

od -t x1 -A n <binary file>

To run a program using qemu on MacOS you can type the following 

qemu-system-x86\_64 <binary file> 
