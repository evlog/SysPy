library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

-- For Synplicity Synplify
--library virtexe;
--use	virtexe.components.all; 

-- Aldec
library	unisim;
use unisim.vcomponents.all;

entity XPM8Kx16_3 is port(
	              cp2     : in  std_logic;
					  ce      : in  std_logic; 
	              address : in  std_logic_vector(12 downto 0); 
					  din     : in  std_logic_vector(15 downto 0);		                
					  dout    : out std_logic_vector(15 downto 0);
					  weh     : in  std_logic;
					  wel     : in  std_logic
					  );
end XPM8Kx16_3;

architecture RTL of XPM8Kx16_3 is

type   RAMBlDOut_Type is array(2**(address'length-9)-1 downto 0) of  std_logic_vector(31 downto 0);
signal RAMBlDOut     : RAMBlDOut_Type;

signal WEBL     : std_logic_vector(2**(address'length-9)-1 downto 0);
signal WEBH     : std_logic_vector(2**(address'length-9)-1 downto 0);
signal gnd      : std_logic;

signal WEBL_int, WEBH_int : std_logic_vector(1 downto 0);
signal address_int : std_logic_vector(13 downto 0);
signal dummyl, dummyh : std_logic_vector(7 downto 0); 

begin

address_int <= "00" & address(8 downto 0) & "000";
WEBH_Dcd:for i in WEBL'range generate 
 WEBL(i) <= '1' when (wel='1' and address(address'high downto 9)=i) else '0';
end generate ;

WEBL_Dcd:for i in WEBH'range generate 
 WEBH(i) <= '1' when (weh='1' and address(address'high downto 9)=i) else '0';
end generate ;


RAM_Inst:for i in 0 to 2**(address'length-9)-1 generate
