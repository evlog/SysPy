library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vector16 is
port (clk : in std_logic;
		en : in std_logic;
		addr : in std_logic_vector(3 downto 0);
		do : out std_logic_vector(7 downto 0));
end vector16;

architecture vector16_beh of vector16 is

type ram_type is array (15 downto 0) of std_logic_vector (7 downto 0);
signal RAM: ram_type := (X"C1", X"41", X"12", X"03", X"DC", X"49", X"09", X"FA", X"04", X"50", X"23", X"6C", X"D2", X"19", X"0B", X"78"); 

begin

	process (clk)
	begin
		if clk'event and clk = '1' then
--			if en = '1' then
				do <= RAM(conv_integer(addr)) ;
--			end if;
		end if;
	end process;
end vector16_beh;