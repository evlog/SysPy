----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:44:25 09/21/2011 
-- Design Name: 
-- Module Name:    MUXforcmpaddress - Behavioral 
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

entity MUXforcmpaddress is
port(clk,NRMsignalint:in std_logic;
     ap,Qaddressval,ap1,Qaddressval1,ap2,Qaddressval2,ap3,Qaddressval3:in std_logic_vector(8 downto 0);
	  addrsstomin1,addrsstomin2,addrsstomin3,addrsstomin4:out std_logic_vector(8 downto 0));
end MUXforcmpaddress;

architecture Behavioral of MUXforcmpaddress is

begin
 process(clk,NRMsignalint)
begin
  if clk'event and clk='1' then
   if NRMsignalint='0' then
	 addrsstomin1<=Qaddressval;
    addrsstomin2<=Qaddressval1;
	 addrsstomin3<=Qaddressval2;
	 addrsstomin4<=Qaddressval3;
	 else
	 addrsstomin1<=ap;
    addrsstomin2<=ap1;
	 addrsstomin3<=ap2;
	 addrsstomin4<=ap3;
  end if;
 end if;
end process; 
end Behavioral;

