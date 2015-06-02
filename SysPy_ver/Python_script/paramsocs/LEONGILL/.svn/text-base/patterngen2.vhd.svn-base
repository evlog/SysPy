----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:47:01 05/08/2011 
-- Design Name: 
-- Module Name:    patterngen2 - Behavioral 
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

entity patterngen2 is
generic(n: positive :=32);
port(	clock,en:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	Qinseed:  in std_logic_vector(7 downto 0);
	Qout:	out std_logic_vector(n-1 downto 0));
end patterngen2;

architecture Behavioral of patterngen2 is

signal Qint:std_logic_vector(15 downto 0):="0000000000000000";
signal QA_signal,QB_signal:std_logic_vector(7 downto 0):="00000000";
signal Q_signal:std_logic_vector(7 downto 0):="00000000";

component random2gen is
generic(n: positive :=8);
port(clock,en:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	Qin:in std_logic_vector(n-1 downto 0);
	Q:	out std_logic_vector(n-1 downto 0));
end component;	

begin

cnt_inst: random2gen
port map (clock=>clock,
          en=>en,
	      clear=>clear,
	      count=>count,
			  Qin=>Qinseed,
	      Q=>Q_signal);

QA_signal <= Q_signal(7 downto 4) & Q_signal(3 downto 0);
QB_signal <= Q_signal(3 downto 0) & Q_signal(7 downto 4); 

--QA_signal(7)<=Q_signal(7);
--QA_signal(6)<=Q_signal(5);
--QA_signal(5)<=Q_signal(6);
--QA_signal(4)<=Q_signal(4);
--QA_signal(3)<=Q_signal(2);
--QA_signal(2)<=Q_signal(3);
--QA_signal(1)<=Q_signal(1);
--QA_signal(0)<=Q_signal(0);
--
--QB_signal(7)<=Q_signal(3);
--QB_signal(6)<=Q_signal(1);
--QB_signal(5)<=Q_signal(2);
--QB_signal(4)<=Q_signal(0);
--QB_signal(3)<=Q_signal(7);
--QB_signal(2)<=Q_signal(5);
--QB_signal(1)<=Q_signal(6);
--QA_signal(0)<=Q_signal(4);



Qint<=QA_signal&QB_signal;
Qout<=("0000000000000000"&Qint);



end Behavioral;

