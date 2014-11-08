SysPy (System Python)
===============================================================================
This project is based on my PhD thesis and is related with a Python tool 
developed to ease the hardware implementation of processor-centric systems 
implemented on FGPA devices. 

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

(d) simulation and generation of VCD files for top-level I/O signal visualization.

(e) tool integration for hw/sw co-design by generating Tcl scripts for FPGA 
    synthesis tools.

On this repository supporting Python tools used within SysPy and also design
examples using SysPy are included.

In case you find any piece of code in this repository useful to your work please
add a reference to SysPy's repository or to one of the published papers related to 
SysPy. The list of publications as well as other information about me and the 
project can be found in my personla website:

http://cgi.di.uoa.gr/~evlog/




