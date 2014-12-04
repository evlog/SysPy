SysPy (System Python)
===============================================================================
Please read this file in its raw version to get the correct text structure.

This project is based on my PhD thesis and is related to a Python tool called
System Python (SysPy) developed to ease the hardware implementation of 
processor-centric systems implemented on FGPA devices. 

Using Python our goal was to integrate under the same scripting environment all 
the required tools for hardware/software development and simulation of a 
System on Chip (SoC). SysPy also takes advantage of Python's clear and powerful 
syntax that can be used to describe hardware digital designs using Hardware 
Description Language (HDL) like syntax or in an abstract way, using functions 
to auto-generate HDL code.

The key fetures of the tool are summarized below:

(a) processor-centric designs and related C compiler tools handling for software 
    development.

(b) RTL code generation using parameterized Python functions.

(c) abstract simulation of a design by mapping hardware functionality to Python 
    function and classes.

(d) simulation and generation of VCD files for top-level I/O signal 
    visualization.

(e) tool integration for hw/sw co-design by generating Tcl scripts for FPGA 
    synthesis tools.

In this repository Python code of SysPy, supporting Python tools used within 
SysPy and also design examples using SysPy are included.

The folders' hierarchy in the repository is the following:

./SysPy
    ./tools
        ./bin2init
            bint2init.py
            bin2hex.c
            bin2hex (binary)
        ./fp2Bin
            fpSignToBin.py
			
			
-In the "tools" directory standalone Python code is included used within SysPy.

-"bin2init": Python and C code are included that can be used
 to initialize to Xilinx BRAMs the binary content of C compiled software for 
 the ORPSoC v2 (OpenrRisc) processor design. 

-"fp2Bin": Conversion of floating point numbers to the corresponding binary 
 fixed point representation.

In case you find any piece of code in this repository useful to your work please
add a reference to SysPy's repository or to one of the published papers related 
to SysPy. The list of publications as well as other information about me and the 
project can be found in my personal website:

http://cgi.di.uoa.gr/~evlog/




