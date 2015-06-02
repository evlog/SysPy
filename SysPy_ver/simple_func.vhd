library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity simple_func is
	port (
		x: in std_logic;
		y: in std_logic;
		y1: in std_logic_vector(3 downto 0);
		z: out std_logic_vector(3 downto 0);
		clk: in std_logic;
		rst: in std_logic);
end simple_func;

architecture simple_func_arch of simple_func is 

type state_type0 is (s0, s1, s2, s3);
signal state: state_type0;
signal z1: std_logic_vector(3 downto 0) := "0011";

begin

       proc_2: process(clk, rst) begin
              if rst = '1' then
                     z  <= "0000";
                     state  <= s0;
              elsif rising_edge(clk) then
                     if state = s0 then
                            z  <= "0000";
                            state  <= s1;
                     elsif state = s1 then
                            z  <= "0001";
                            state  <= s2;
                     elsif state = s2 then
                            z  <= "0011";
                            state  <= s2;
                     elsif state = s3 then
                            z  <= "0100";
                            state  <= s0;
                            
                            
                     end if;
              end if;
       end process;
end simple_func_arch;