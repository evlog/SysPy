-- simple1.vhd
-- Generated by SysPy
-- Wed May 11 16:41:48 2011

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
entity simple1 is
	port (
		x0: in std_logic;
		x1: in std_logic;
		x2: in std_logic;
		x3: in std_logic;
		x4: in std_logic;
		y: in std_logic);
end simple1;

architecture simple1_arch of simple1 is 

-- Internal signals
--------------------------------------------------------------------------
signal intr0: std_logic;
--------------------------------------------------------------------------

begin

       and3_U0: and3 port map (
              I0  => x0,
              I1  => x1,
              I2  => x2,
              O  => intr0);

       and3_U1: and3 port map (
              I0  => intr0,
              I1  => x3,
              I2  => x4,
              O  => y);

end simple1_arch;