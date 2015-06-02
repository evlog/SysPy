----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:07 12/21/2009 
-- Design Name: 
-- Module Name:    fir_filt_u_comp - fir_filt_u_comp_struct 
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

library work;
use work.my_lib.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filt_u_comp is
	 generic ( n : integer := 8;
				  m : integer := 2);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           filt_in : in  STD_LOGIC_VECTOR((n - 1) downto 0);
			  filt_param : in STD_LOGIC_VECTOR(((m * n) - 1) downto 0);
           filt_out : out  STD_LOGIC_VECTOR ((filt_acc_bus(n, m) - 1) downto 0));
end fir_filt_u_comp;

architecture fir_filt_u_comp_struct of fir_filt_u_comp is

--component mac 
--	 generic ( n : integer;
--		        mac_bus : integer);
--    Port ( I0 : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
--           I1 : in  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0);
--           M : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
--           mac_out : out  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0));
--end component;

--component d_ff
--    generic ( n : integer := 8);
--    Port ( clk : in  STD_LOGIC;
--           rst : in  STD_LOGIC;
--           d : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
--           q : out  STD_LOGIC_VECTOR ((n - 1) downto 0));
--end component;

type mat is array (0 to (m -1)) of std_logic_vector((n - 1) downto 0); 
type mat1 is array (0 to (m - 2)) of std_logic_vector ((filt_acc_bus(n, m) - 1) downto 0);

--signal sreg : mat1;
signal d_ff_in_int, d_ff_out_int : mat1;
signal filt_param_int : mat;
signal zeros : std_logic_vector((filt_acc_bus(n, m) - 1) downto 0);

begin

	process(rst) begin
		if rst = '1' then
			for i in 0 to (m - 1) loop
				--sreg(i) <= (others => '0');
				filt_param_int(i) <= filt_param((((i + 1) * n) - 1) downto (i * n));
			end loop;
			zeros <= (others => '0');

--		elsif rising_edge(clk) then
--			for i in 0 to (m - 2) loop
--				sreg(i+1) <= sreg(i);
--			end loop;
--			sreg(0) <= mac_out_int(0);
		end if;
	end process;
	
	LOOP0: for i in 0 to (m - 1) generate
		IF0: if i = 0 generate
			MAC0: mac_u_comp generic map(n, filt_acc_bus(n, m))
			port map (
			I0 => filt_in,
			I1 => zeros,
			M => filt_param_int((m - 1)),--"00110000",--conv_std_logic_vector(coef(i), 8),
			mac_out => d_ff_in_int(i));
			
			D_FF0: d_ff generic map(filt_acc_bus(n, m))
			port map (
			clk => clk,
			rst => rst,
			d => d_ff_in_int(i),
			q => d_ff_out_int(i));
		end generate;
		ELSE0: if i = (m - 1) generate
			MAC1: mac_u_comp generic map(n, filt_acc_bus(n, m))
			port map (
			I0 => filt_in,
			I1 => d_ff_out_int(i - 1),
			M => filt_param_int(0),--"00000100",--conv_std_logic_vector(coef(i), 8),
			mac_out => filt_out);	
			
			--D_FF1: d_ff generic map(filt_acc_bus(n, m))
			--port map (
			--clk => clk,
			--rst => rst,
			--d => mac_out_int(i),
			--q => filt_out);
		end generate;		
		ELSE1: if ((i /= 0) and (i /= (m - 1))) generate
			MAC2: mac_u_comp generic map(n, filt_acc_bus(n, m))
			port map (
			I0 => filt_in,
			I1 => d_ff_out_int(i - 1),
			M => filt_param_int(m - 1 -i),--"00000100",--conv_std_logic_vector(coef(i), 8),
			mac_out => d_ff_in_int(i));	
			
			D_FF2: d_ff generic map(filt_acc_bus(n, m))
			port map (
			clk => clk,
			rst => rst,
			d => d_ff_in_int(i),
			q => d_ff_out_int(i));
		end generate;
	end generate;
	
	--filt_out <= mac_out_int(m - 1);


end fir_filt_u_comp_struct;
