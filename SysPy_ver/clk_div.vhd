-- clk_div.vhd
-- Generated by SysPy
-- Fri May  6 16:45:36 2011

------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------0---0000---------------------------
--------------------------------------------------------------------0--0----00------------------------
---------------------------------------------------------------------0--0-------00--------------------
-----------------------------------------------------00000000000000000--0---------00------------------
----------------------------------------------------00---------------0--0-----------0-----------------
---------------------------------------------------00----------------0--0------------000000000000000--
----00000000--------------------------000000000----00----------------0--0------------0-------------00-
---00---------------------------------00------000--0-----------0000000--0----------0----------------00
--00----------------------------------00-------00--00--------00------0--0--------00-----------------00
--00-----------00-------0----00000----00-------00--00-------00-------0-0------00--------------------00
---000---------00------00---00--------00------000---00------0-------0--000000-----------------------00
-----000000-----00----00---00---------000000000-----00-----00---------------------------------------00
---------000-----0----00----0000------000------------00---00----------------------------------------00
-----------00----00--00--------0000---00--------------0---0-----------------------------------------00
-----------00-----00-0-----------00---00--------------00-00-----------------------------------------00
----------00------0000-----------00---00---------------000------------------------------------------00
--000000000--------00-------000000----00---------------000------------------------------------------00
-------------------00-----------------00---------------00-------------------------------------------00
------------------00------------------00---------------0--------------------------------------------00
------------------0-------------------00--------------00--------------------------------------------00
-----------------0--------------------00--------------0---------------------------------------------00
--------------------------------------00------------------------------------------------------------00
--------------------------------------00------------------------------------------------------------00
--------------------------------------00------------------------------------------------------------00
---------------------------------------00-----------------------------------------------------------00
----------------------------------------0000000000000000000000000000000000000000000000000000000000000-
-----------------------------------------00000000000000000000000000000000000000000000000000000000000--
------------------------------------------------------------------------------------------------------


library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
entity clk_div is
	port (
		rst: in std_logic;
		clk: in std_logic;
		clk_div_25MHz: out std_logic);
		-- XST constraints
		----------------------------------------------------------
		attribute FSM_STYLE: string;
		attribute FSM_STYLE of clk_div: entity is "lut";
		attribute MUX_EXTRACT: string;
		attribute MUX_EXTRACT of clk_div: entity is "yes";
		----------------------------------------------------------
end clk_div;

architecture clk_div_arch of clk_div is 

-- Internal signals
--------------------------------------------------------------------------
signal clk_div_25MHz_int: std_logic := '0';
--------------------------------------------------------------------------

begin

       proc_0: process(clk, rst) 

       -- Variables
       -------------------------------------------------------------------
       variable count_25MHz: integer range 0 to 3 := 0;
       -------------------------------------------------------------------

       begin

              if rst = '0' then
                     clk_div_25MHz_int  <= '0';
                     count_25MHz  := 0;
              elsif rising_edge(clk) then
                     if count_25MHz = 1 then
                            count_25MHz  := 0;
                            clk_div_25MHz_int  <=  not clk_div_25MHz_int;
                     else 
                            count_25MHz  := count_25MHz + 1;
                     end if;
              end if;
       end process;

       clk_div_25MHz  <= clk_div_25MHz_int;
end clk_div_arch;