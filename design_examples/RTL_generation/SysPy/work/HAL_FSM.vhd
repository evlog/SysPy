-- HAL_FSM.vhd
-- Generated by SysPy
-- Mon Jul 13 13:34:44 2015
-- Author: Evangelos Logaras

---------------------------------------------------------------------------------------------------
-------------------------------------------------------------------0---0000------------------------
--------------------------------------------------------------------0--0----00---------------------
---------------------------------------------------------------------0--0-------00-----------------
-----------------------------------------------------00000000000000000--0---------00---------------
----------------------------------------------------00---------------0--0-----------0--------------
---------------------------------------------------00----------------0--0------------000000000000--
----00000000--------------------------000000000----00----------------0--0------------0----------00-
---00---------------------------------00------000--0-----------0000000--0----------0-------------00
--00----------------------------------00-------00--00--------00------0--0--------00--------------00
--00-----------00-------0----00000----00-------00--00-------00-------0-0------00-----------------00
---000---------00------00---00--------00------000---00------0-------0--000000--------------------00
-----000000-----00----00---00---------000000000-----00-----00------------------------------------00
---------000-----0----00----0000------000------------00---00-------------------------------------00
-----------00----00--00--------0000---00--------------0---0--------------------------------------00
-----------00-----00-0-----------00---00--------------00-00--------------------------------------00
----------00------0000-----------00---00---------------000---------------------------------------00
--000000000--------00-------000000----00---------------000---------------------------------------00
-------------------00-----------------00---------------00----------------------------------------00
------------------00------------------00---------------0-----------------------------------------00
------------------0-------------------00--------------00-----------------------------------------00
-----------------0--------------------00--------------0------------------------------------------00
---------------------------------------00--------------------------------------------------------00
----------------------------------------0000000000000000000000000000000000000000000000000000000000-
-----------------------------------------00000000000000000000000000000000000000000000000000000000--
---------------------------------------------------------------------------------------------------


library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
library work;
entity HAL_FSM is
	port (
		clk: in std_logic;
		ce2int: in std_logic;
		dimem: in std_logic_vector(31 downto 0);
		PORTA_in: in std_logic_vector(31 downto 0);
		PORTB_in: in std_logic_vector(31 downto 0);
		PORTC_in: in std_logic_vector(31 downto 0);
		sendnext: out std_logic;
		sendfsmint: out std_logic;
		rstFSMforsend: out std_logic;
		PORTA_out: out std_logic_vector(31 downto 0);
		PORTB_out: out std_logic_vector(31 downto 0);
		PORTC_out: out std_logic_vector(31 downto 0));
end HAL_FSM;

architecture HAL_FSM_arch of HAL_FSM is 

-- Internal signals
--------------------------------------------------------------------------
signal m_rtr: std_logic;
signal m_ack: std_logic;
signal rst_fsm: std_logic;
type type0 is array (0 to 10) of std_logic_vector(31 downto 0);
signal ROM: type0;
type state_type0 is (smy0, smy1, smy2, smy1del, s0, s1, s2, s3);
signal state: state_type0;
--------------------------------------------------------------------------

begin

       m_rtr  <= PORTB_in(0);
       m_ack  <= PORTB_in(3);
       rst_fsm  <= PORTB_in(4);
       proc_0: process(clk, rst_fsm, ce2int) 

       -- Variables
       -------------------------------------------------------------------
       variable count: integer range 0 to 15;
       -------------------------------------------------------------------

       begin

              if rst_fsm = '1' then
                     PORTB_out(1) <= '0';
                     PORTB_out(2) <= '0';
                     PORTC_out  <= "00000000000000000000000000000000";
              elsif rising_edge(clk) then
                     if state = smy0 then
                            if ce2int = '1' then
                                   sendnext  <= '0';
                                   rstFSMforsend  <= '0';
                                   state  <= smy1;
                            elsif ce2int = '0' then
                                   sendnext  <= '0';
                                   state  <= smy0;
                                   
                            end if;
                     elsif state = smy1 then
                            if count < 10 then
                                   ROM(count) <= dimem;
                                   sendfsmint  <= '0';
                                   state  <= smy2;
                            elsif count >= 10 then
                                   sendfsmint  <= '0';
                                   count  := 0;
                                   rstFSMforsend  <= '1';
                                   state  <= s0;
                            end if;
                     elsif state = smy2 then
                            count  := count + 1;
                            sendfsmint  <= '1';
                            state  <= smy1del;
                     elsif state = smy1del then
                            state  <= smy1;
                     elsif state = s0 then
                            if m_rtr = '1' then
                                   PORTB_out(1) <= '1';
                                   state  <= s1;
                            elsif m_rtr = '0' then
                                   PORTB_out(1) <= '0';
                                   state  <= s0;
                            end if;
                     elsif state = s1 then
                            PORTC_out  <= ROM(count);
                            PORTB_out(2) <= '1';
                            state  <= s2;
                     elsif state = s2 then
                            if m_ack = '1' then
                                   PORTB_out(1) <= '0';
                                   PORTB_out(2) <= '0';
                                   state  <= s3;
                            elsif m_ack = '0' then
                                   PORTB_out(2) <= '1';
                                   state  <= s2;
                            end if;
                     elsif state = s3 then
                            if count >= 10 then
                                   sendnext  <= '1';
                                   count  := 0;
                                   state  <= smy0;
                            elsif count < 10 then
                                   count  := count + 1;
                                   sendnext  <= '0';
                                   state  <= s0;
                            end if;
                     end if;
              end if;
       end process;

end HAL_FSM_arch;