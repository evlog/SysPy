////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: L.33
//  \   \         Application: netgen
//  /   /         Filename: test_core_gen2.v
// /___/   /\     Timestamp: Wed Mar 10 14:41:51 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/_cg/test_core_gen2.ngc" "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/_cg/test_core_gen2.v" 
// Device	: 3s1000fg320-5
// Input file	: /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/_cg/test_core_gen2.ngc
// Output file	: /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/_cg/test_core_gen2.v
// # of Modules	: 1
// Design Name	: test_core_gen2
// Xilinx        : /media/4DC444747164E7E6/Xilinx_11.1_Ubuntu/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module test_core_gen2 (
x_out, x_in
);
  output [4 : 0] x_out;
  input [7 : 0] x_in;
  
  // synthesis translate_off
  
  wire \blk00000003/sig0000004a ;
  wire \blk00000003/sig00000049 ;
  wire \blk00000003/sig00000048 ;
  wire \blk00000003/sig00000047 ;
  wire \blk00000003/sig00000046 ;
  wire \blk00000003/sig00000045 ;
  wire \blk00000003/sig00000044 ;
  wire \blk00000003/sig00000043 ;
  wire \blk00000003/sig00000042 ;
  wire \blk00000003/sig00000041 ;
  wire \blk00000003/sig00000040 ;
  wire \blk00000003/sig0000003f ;
  wire \blk00000003/sig0000003e ;
  wire \blk00000003/sig0000003d ;
  wire \blk00000003/sig0000003c ;
  wire \blk00000003/sig0000003b ;
  wire \blk00000003/sig0000003a ;
  wire \blk00000003/sig00000039 ;
  wire \blk00000003/sig00000038 ;
  wire \blk00000003/sig00000037 ;
  wire \blk00000003/sig00000036 ;
  wire \blk00000003/sig00000035 ;
  wire \blk00000003/sig00000034 ;
  wire \blk00000003/sig00000033 ;
  wire \blk00000003/sig00000032 ;
  wire \blk00000003/sig00000031 ;
  wire \blk00000003/sig00000030 ;
  wire \blk00000003/sig0000002f ;
  wire \blk00000003/sig0000002e ;
  wire \blk00000003/sig0000002d ;
  wire \blk00000003/sig0000002c ;
  wire \blk00000003/sig0000002b ;
  wire \blk00000003/sig0000002a ;
  wire \blk00000003/sig00000029 ;
  wire \blk00000003/sig00000028 ;
  wire \blk00000003/sig00000027 ;
  wire \blk00000003/sig00000026 ;
  wire \blk00000003/sig00000025 ;
  wire \blk00000003/sig00000024 ;
  wire \blk00000003/sig00000023 ;
  wire \blk00000003/sig00000022 ;
  wire \blk00000003/sig00000021 ;
  wire \blk00000003/sig00000020 ;
  wire \blk00000003/sig0000001f ;
  wire \blk00000003/sig0000001e ;
  wire \blk00000003/sig0000001d ;
  wire \blk00000003/sig0000001c ;
  wire \blk00000003/sig0000001b ;
  wire \blk00000003/sig0000001a ;
  wire \blk00000003/sig00000019 ;
  wire \blk00000003/sig00000018 ;
  wire \blk00000003/sig00000017 ;
  wire \blk00000003/sig00000016 ;
  wire \blk00000003/sig00000015 ;
  wire \blk00000003/sig00000014 ;
  wire \blk00000003/sig00000013 ;
  wire \blk00000003/sig00000012 ;
  wire \blk00000003/sig00000011 ;
  wire \blk00000003/sig00000010 ;
  wire \blk00000003/sig0000000f ;
  wire \blk00000003/sig0000000e ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000030_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000028_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000023_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000019_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000014_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000012_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000010_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000e_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000c_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000a_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_O_UNCONNECTED ;
  wire [7 : 0] x_in_0;
  wire [4 : 4] NlwRenamedSig_OI_x_out;
  wire [3 : 0] x_out_1;
  assign
    x_out[4] = NlwRenamedSig_OI_x_out[4],
    x_out[3] = x_out_1[3],
    x_out[2] = x_out_1[2],
    x_out[1] = x_out_1[1],
    x_out[0] = x_out_1[0],
    x_in_0[7] = x_in[7],
    x_in_0[6] = x_in[6],
    x_in_0[5] = x_in[5],
    x_in_0[4] = x_in[4],
    x_in_0[3] = x_in[3],
    x_in_0[2] = x_in[2],
    x_in_0[1] = x_in[1],
    x_in_0[0] = x_in[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  MUXF5   \blk00000003/blk00000051  (
    .I0(\blk00000003/sig0000004a ),
    .I1(\blk00000003/sig00000049 ),
    .S(x_in_0[4]),
    .O(\blk00000003/sig0000001a )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000003/blk00000050  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000017 ),
    .I2(\blk00000003/sig0000003b ),
    .I3(\blk00000003/sig0000002d ),
    .O(\blk00000003/sig0000004a )
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \blk00000003/blk0000004f  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000017 ),
    .I2(\blk00000003/sig0000003b ),
    .I3(\blk00000003/sig0000002d ),
    .O(\blk00000003/sig00000049 )
  );
  INV   \blk00000003/blk0000004e  (
    .I(x_in_0[6]),
    .O(\blk00000003/sig00000041 )
  );
  INV   \blk00000003/blk0000004d  (
    .I(\blk00000003/sig00000023 ),
    .O(x_out_1[0])
  );
  INV   \blk00000003/blk0000004c  (
    .I(x_in_0[4]),
    .O(\blk00000003/sig00000039 )
  );
  INV   \blk00000003/blk0000004b  (
    .I(x_in_0[5]),
    .O(\blk00000003/sig0000003d )
  );
  INV   \blk00000003/blk0000004a  (
    .I(\blk00000003/sig00000014 ),
    .O(x_out_1[1])
  );
  INV   \blk00000003/blk00000049  (
    .I(x_in_0[2]),
    .O(\blk00000003/sig00000024 )
  );
  INV   \blk00000003/blk00000048  (
    .I(x_in_0[3]),
    .O(\blk00000003/sig00000028 )
  );
  INV   \blk00000003/blk00000047  (
    .I(\blk00000003/sig00000017 ),
    .O(x_out_1[2])
  );
  INV   \blk00000003/blk00000046  (
    .I(x_in_0[0]),
    .O(\blk00000003/sig0000000f )
  );
  INV   \blk00000003/blk00000045  (
    .I(x_in_0[1]),
    .O(\blk00000003/sig00000012 )
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \blk00000003/blk00000044  (
    .I0(x_in_0[6]),
    .I1(\blk00000003/sig0000002e ),
    .I2(x_in_0[7]),
    .O(\blk00000003/sig0000002f )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \blk00000003/blk00000043  (
    .I0(x_in_0[6]),
    .I1(x_in_0[7]),
    .O(\blk00000003/sig00000045 )
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \blk00000003/blk00000042  (
    .I0(x_in_0[6]),
    .I1(\blk00000003/sig0000001a ),
    .I2(x_in_0[7]),
    .O(\blk00000003/sig0000001b )
  );
  LUT4 #(
    .INIT ( 16'h8ADF ))
  \blk00000003/blk00000041  (
    .I0(\blk00000003/sig00000017 ),
    .I1(x_in_0[6]),
    .I2(x_in_0[7]),
    .I3(\blk00000003/sig00000043 ),
    .O(\blk00000003/sig00000033 )
  );
  LUT4 #(
    .INIT ( 16'h2A7F ))
  \blk00000003/blk00000040  (
    .I0(\blk00000003/sig00000017 ),
    .I1(x_in_0[7]),
    .I2(x_in_0[6]),
    .I3(\blk00000003/sig00000047 ),
    .O(\blk00000003/sig00000037 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \blk00000003/blk0000003f  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000031 ),
    .I2(\blk00000003/sig0000002e ),
    .O(\blk00000003/sig0000001e )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \blk00000003/blk0000003e  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000035 ),
    .I2(\blk00000003/sig00000032 ),
    .O(\blk00000003/sig00000021 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \blk00000003/blk0000003d  (
    .I0(\blk00000003/sig00000017 ),
    .I1(\blk00000003/sig0000003b ),
    .I2(x_in_0[4]),
    .O(\blk00000003/sig0000002b )
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \blk00000003/blk0000003c  (
    .I0(\blk00000003/sig00000017 ),
    .I1(\blk00000003/sig00000014 ),
    .I2(x_in_0[3]),
    .I3(\blk00000003/sig0000002a ),
    .O(\blk00000003/sig00000018 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \blk00000003/blk0000003b  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000026 ),
    .I2(x_in_0[2]),
    .O(\blk00000003/sig00000015 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000003a  (
    .I0(x_in_0[6]),
    .I1(x_in_0[7]),
    .O(\blk00000003/sig00000040 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000039  (
    .I0(\blk00000003/sig00000017 ),
    .I1(\blk00000003/sig0000003f ),
    .I2(x_in_0[5]),
    .O(\blk00000003/sig0000002e )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000003/blk00000038  (
    .I0(x_in_0[6]),
    .I1(x_in_0[7]),
    .O(\blk00000003/sig00000044 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000003/blk00000037  (
    .I0(\blk00000003/sig00000017 ),
    .I1(x_in_0[6]),
    .I2(x_in_0[7]),
    .I3(\blk00000003/sig00000043 ),
    .O(\blk00000003/sig00000032 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \blk00000003/blk00000036  (
    .I0(\blk00000003/sig00000017 ),
    .I1(x_in_0[7]),
    .I2(x_in_0[6]),
    .I3(\blk00000003/sig00000047 ),
    .O(\blk00000003/sig00000036 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000035  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000031 ),
    .I2(\blk00000003/sig0000002e ),
    .O(\blk00000003/sig0000001d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000034  (
    .I0(\blk00000003/sig00000014 ),
    .I1(\blk00000003/sig00000035 ),
    .I2(\blk00000003/sig00000032 ),
    .O(\blk00000003/sig00000020 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000003/blk00000033  (
    .I0(x_in_0[7]),
    .I1(x_in_0[6]),
    .O(x_out_1[3])
  );
  XORCY   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig00000048 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000017 )
  );
  MUXCY   \blk00000003/blk00000031  (
    .CI(\blk00000003/sig00000048 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig0000003c )
  );
  XORCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig00000046 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\NLW_blk00000003/blk00000030_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig00000046 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000048 )
  );
  XORCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig00000042 ),
    .LI(\blk00000003/sig00000045 ),
    .O(\blk00000003/sig00000047 )
  );
  MUXCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig00000042 ),
    .DI(\blk00000003/sig00000044 ),
    .S(\blk00000003/sig00000045 ),
    .O(\blk00000003/sig00000046 )
  );
  XORCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig0000003e ),
    .LI(\blk00000003/sig00000041 ),
    .O(\blk00000003/sig00000043 )
  );
  MUXCY   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig0000003e ),
    .DI(\blk00000003/sig00000040 ),
    .S(\blk00000003/sig00000041 ),
    .O(\blk00000003/sig00000042 )
  );
  XORCY   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig0000003a ),
    .LI(\blk00000003/sig0000003d ),
    .O(\blk00000003/sig0000003f )
  );
  MUXCY   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig0000003a ),
    .DI(x_in_0[5]),
    .S(\blk00000003/sig0000003d ),
    .O(\blk00000003/sig0000003e )
  );
  XORCY   \blk00000003/blk00000028  (
    .CI(\blk00000003/sig0000003c ),
    .LI(\blk00000003/sig0000000e ),
    .O(\NLW_blk00000003/blk00000028_O_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000027  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .LI(\blk00000003/sig00000039 ),
    .O(\blk00000003/sig0000003b )
  );
  MUXCY   \blk00000003/blk00000026  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .DI(x_in_0[4]),
    .S(\blk00000003/sig00000039 ),
    .O(\blk00000003/sig0000003a )
  );
  XORCY   \blk00000003/blk00000025  (
    .CI(\blk00000003/sig00000038 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000014 )
  );
  MUXCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig00000038 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000027 )
  );
  XORCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig00000034 ),
    .LI(\blk00000003/sig00000037 ),
    .O(\NLW_blk00000003/blk00000023_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000022  (
    .CI(\blk00000003/sig00000034 ),
    .DI(\blk00000003/sig00000036 ),
    .S(\blk00000003/sig00000037 ),
    .O(\blk00000003/sig00000038 )
  );
  XORCY   \blk00000003/blk00000021  (
    .CI(\blk00000003/sig00000030 ),
    .LI(\blk00000003/sig00000033 ),
    .O(\blk00000003/sig00000035 )
  );
  MUXCY   \blk00000003/blk00000020  (
    .CI(\blk00000003/sig00000030 ),
    .DI(\blk00000003/sig00000032 ),
    .S(\blk00000003/sig00000033 ),
    .O(\blk00000003/sig00000034 )
  );
  XORCY   \blk00000003/blk0000001f  (
    .CI(\blk00000003/sig0000002c ),
    .LI(\blk00000003/sig0000002f ),
    .O(\blk00000003/sig00000031 )
  );
  MUXCY   \blk00000003/blk0000001e  (
    .CI(\blk00000003/sig0000002c ),
    .DI(\blk00000003/sig0000002e ),
    .S(\blk00000003/sig0000002f ),
    .O(\blk00000003/sig00000030 )
  );
  XORCY   \blk00000003/blk0000001d  (
    .CI(\blk00000003/sig00000029 ),
    .LI(\blk00000003/sig0000002b ),
    .O(\blk00000003/sig0000002d )
  );
  MUXCY   \blk00000003/blk0000001c  (
    .CI(\blk00000003/sig00000029 ),
    .DI(\blk00000003/sig00000017 ),
    .S(\blk00000003/sig0000002b ),
    .O(\blk00000003/sig0000002c )
  );
  XORCY   \blk00000003/blk0000001b  (
    .CI(\blk00000003/sig00000025 ),
    .LI(\blk00000003/sig00000028 ),
    .O(\blk00000003/sig0000002a )
  );
  MUXCY   \blk00000003/blk0000001a  (
    .CI(\blk00000003/sig00000025 ),
    .DI(x_in_0[3]),
    .S(\blk00000003/sig00000028 ),
    .O(\blk00000003/sig00000029 )
  );
  XORCY   \blk00000003/blk00000019  (
    .CI(\blk00000003/sig00000027 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\NLW_blk00000003/blk00000019_O_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000018  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .LI(\blk00000003/sig00000024 ),
    .O(\blk00000003/sig00000026 )
  );
  MUXCY   \blk00000003/blk00000017  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .DI(x_in_0[2]),
    .S(\blk00000003/sig00000024 ),
    .O(\blk00000003/sig00000025 )
  );
  XORCY   \blk00000003/blk00000016  (
    .CI(\blk00000003/sig00000022 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000023 )
  );
  MUXCY   \blk00000003/blk00000015  (
    .CI(\blk00000003/sig00000022 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000003/sig0000000e ),
    .O(\blk00000003/sig00000011 )
  );
  XORCY   \blk00000003/blk00000014  (
    .CI(\blk00000003/sig0000001f ),
    .LI(\blk00000003/sig00000021 ),
    .O(\NLW_blk00000003/blk00000014_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000013  (
    .CI(\blk00000003/sig0000001f ),
    .DI(\blk00000003/sig00000020 ),
    .S(\blk00000003/sig00000021 ),
    .O(\blk00000003/sig00000022 )
  );
  XORCY   \blk00000003/blk00000012  (
    .CI(\blk00000003/sig0000001c ),
    .LI(\blk00000003/sig0000001e ),
    .O(\NLW_blk00000003/blk00000012_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000011  (
    .CI(\blk00000003/sig0000001c ),
    .DI(\blk00000003/sig0000001d ),
    .S(\blk00000003/sig0000001e ),
    .O(\blk00000003/sig0000001f )
  );
  XORCY   \blk00000003/blk00000010  (
    .CI(\blk00000003/sig00000019 ),
    .LI(\blk00000003/sig0000001b ),
    .O(\NLW_blk00000003/blk00000010_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000000f  (
    .CI(\blk00000003/sig00000019 ),
    .DI(\blk00000003/sig0000001a ),
    .S(\blk00000003/sig0000001b ),
    .O(\blk00000003/sig0000001c )
  );
  XORCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig00000016 ),
    .LI(\blk00000003/sig00000018 ),
    .O(\NLW_blk00000003/blk0000000e_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000000d  (
    .CI(\blk00000003/sig00000016 ),
    .DI(\blk00000003/sig00000017 ),
    .S(\blk00000003/sig00000018 ),
    .O(\blk00000003/sig00000019 )
  );
  XORCY   \blk00000003/blk0000000c  (
    .CI(\blk00000003/sig00000013 ),
    .LI(\blk00000003/sig00000015 ),
    .O(\NLW_blk00000003/blk0000000c_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig00000013 ),
    .DI(\blk00000003/sig00000014 ),
    .S(\blk00000003/sig00000015 ),
    .O(\blk00000003/sig00000016 )
  );
  XORCY   \blk00000003/blk0000000a  (
    .CI(\blk00000003/sig00000010 ),
    .LI(\blk00000003/sig00000012 ),
    .O(\NLW_blk00000003/blk0000000a_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000009  (
    .CI(\blk00000003/sig00000010 ),
    .DI(x_in_0[1]),
    .S(\blk00000003/sig00000012 ),
    .O(\blk00000003/sig00000013 )
  );
  XORCY   \blk00000003/blk00000008  (
    .CI(\blk00000003/sig00000011 ),
    .LI(\blk00000003/sig0000000e ),
    .O(\NLW_blk00000003/blk00000008_O_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000007  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .LI(\blk00000003/sig0000000f ),
    .O(\NLW_blk00000003/blk00000007_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000006  (
    .CI(NlwRenamedSig_OI_x_out[4]),
    .DI(x_in_0[0]),
    .S(\blk00000003/sig0000000f ),
    .O(\blk00000003/sig00000010 )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig0000000e )
  );
  GND   \blk00000003/blk00000004  (
    .G(NlwRenamedSig_OI_x_out[4])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
