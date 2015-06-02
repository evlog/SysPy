----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:47 12/17/2009 
-- Design Name: 
-- Module Name:    mac_u_comp - mac_u_comp_beh 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mac_s_comp is
	 generic ( n : integer := 8;
	           mac_bus : integer := 8);
    Port ( I0 : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
           I1 : in  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0);
           M : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
           mac_out : out  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0));
end mac_s_comp;

architecture mac_s_comp_beh of mac_s_comp is

begin

	mac_out <= (I0 * M) + I1;

end mac_s_comp_beh;