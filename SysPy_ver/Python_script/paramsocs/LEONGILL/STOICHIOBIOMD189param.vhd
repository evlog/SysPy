----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:18:39 10/16/2011 
-- Design Name: 
-- Module Name:    STOICHIOBIOMD189param - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity STOICHIOBIOMD189param is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditech   : integer := 255;
     dotech   : integer := 31);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(adtech downto 0); 
 	di  : in std_logic_vector(ditech downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(dotech downto 0));
end STOICHIOBIOMD189param;

architecture Behavioral of STOICHIOBIOMD189param is

type ram_type is array(0 to  memtech) of std_logic_vector(ditech downto 0);
signal RAM:ram_type:=
(X"000000000000000000000000000000003f8000003f8000000000000000000000",X"000000000000000000000000000000003f8000003f8000000000000000000000", X"bf8000000000000000000000000000003f800000000000000000000000000000", X"bf8000000000000000000000000000003f800000000000000000000000000000",X"0000000000000000000000003f8000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"0000000000000000000000003f8000003f800000000000000000000000000000", X"bf80000000000000000000000000000000000000000000000000000000000000", 
 X"000000000000000000000000000000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000", X"bf80000000000000000000000000000000000000000000000000000000000000",X"c000000000000000000000003f80000000000000000000000000000000000000", X"000000000000000000000000000000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",
 X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"0000000000000000000000003f80000000000000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f8000003f800000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000",X"c000000000000000000000003f80000000000000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000", 
 X"000000000000000000000000000000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"0000000000000000000000003f8000003f800000000000000000000000000000", X"000000000000000000000000000000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"0000000000000000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000", X"000000000000000000000000000000003f800000000000000000000000000000",
 X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"0000000000000000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",
 X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000", 
 X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"c000000000000000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",
 X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000", X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000", X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"000000000000000000000000000000003f800000000000000000000000000000",X"bf8000000000000000000000000000003f8000003f8000000000000000000000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", 
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000", X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",
 X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000",X"bf8000000000000000000000000000003f8000003f8000003f8000003f800000");

 begin 
 process (clk,en,we) 
 begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM(conv_integer(a)) <= di; 
 		else
		    do0(31 downto 0) <= RAM(conv_integer(a))(((8*dotech)+7) downto ((7*dotech)+7));
		    do1(31 downto 0) <= RAM(conv_integer(a))(((7*dotech)+6) downto ((6*dotech)+6));
		    do2(31 downto 0) <= RAM(conv_integer(a))(((6*dotech)+5) downto ((5*dotech)+5));
		    do3(31 downto 0) <= RAM(conv_integer(a))(((5*dotech)+4)downto  ((4*dotech)+4));
 			 do4(31 downto 0) <= RAM(conv_integer(a))(((4*dotech)+3) downto ((3*dotech)+3));
			 do5(31 downto 0) <= RAM(conv_integer(a))(((3*dotech)+2) downto ((2*dotech)+2));
			 do6(31 downto 0) <= RAM(conv_integer(a))(((2*dotech)+1) downto (dotech+1));
			 do7(31 downto 0) <= RAM(conv_integer(a))(dotech downto 0);
 		end if;	  
 	end if; 
  end if;	
 end process; 
end Behavioral;

