----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:25 09/15/2011 
-- Design Name: 
-- Module Name:    test_FSM - test_FSM 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_myFSM is
    Port ( clk,ce2int : in  STD_LOGIC;
	        sendnext,sendfsmint,rstFSMforsend:out  STD_LOGIC;
			  dimem :in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Test_myFSM;

architecture Test_myFSM of Test_myFSM is

constant array_size: integer range 0 to 15 := 11;
type rom_type is array (0 to 10) of std_logic_vector (31 downto 0);
--The first value of the array represents array size = 11
signal ROM : rom_type :=(
conv_std_logic_vector(array_size, 32), X"00000000", X"0000001F", X"0000002F", X"0000003F", X"0000004F", X"0000005F",
X"0000006F", X"0000007F", X"0000008F", X"00000000");
type state_type is (smy0,smy1,smy2,smy1del,s0, s1, s2, s3);
signal state: state_type;
signal m_rtr, m_ack, rst: std_logic;
--signal  count : std_logic_vector(3 downto 0);

--Master: Leon
--Slave: FSM

--Control signals assigned to PIO ports
--m_rtr: master ready to receive -> PORTB_in(0)
--s_cts: slave clear to send -> PORTB_out(1)
-- s_tx: slave transmit -> PORTB_out(2)
--m_ack: maste acknowledge -> PORTB_in(3)
--rst: master resets the FSM -> PORTB_in(4)

--PORTC is for data_out from the FSM to Leon

begin

	m_rtr <= PORTB_in(0);
	--PORTB_out(1) <= s_cts;
	--PORTB_out(2) <= s_tx;
	m_ack <= PORTB_in(3);
	rst <= PORTB_in(4);
	
	process (clk, rst,ce2int)
	variable count : integer range 0 to 15;
	begin
		if (rst = '1') then
			state <= s0;
			PORTB_out(1) <= '0';
			PORTB_out(2) <= '0';
			PORTC_out <= (others => '0');
			count := 0;
			
		elsif rising_edge(clk) then
			case state is
			
			when smy0 =>
			 if ce2int='1' then
			 sendnext<='0';
			 rstFSMforsend<='0';
			   state <= smy1;
			else
			sendnext<='0';
			   state <= smy0;
			end if;	
			
			when smy1 =>
			if count < (array_size - 1) then
			ROM((count)) <= dimem;
			sendfsmint<='0';-------paei sthn FSM pou dinei me thn seira ta dedomena id time ktlp
			 state <= smy2;
			 else
			 sendfsmint<='0';
			 count :=0;
			 --count <="0000";
			 rstFSMforsend<='1';
			 state <= s0;
			end if; 
			 
			 when smy2 =>
			 count := count + 1;
			 --count <= count + 1;
			 sendfsmint<='1';
			 state <= smy1del;
			 
			 when smy1del =>
			  state <= smy1;
				--slave waits for m_rtr = '1'
				--if m_rtr = '1' -> s_cts = '1'
				
				when s0 =>
					if m_rtr = '1' then
						PORTB_out(1) <= '1';
						state <= s1;
					elsif m_rtr = '0' then
						PORTB_out(1) <= '0';
						state <= s0;
					end if;
				
				--slave sends data to PORTC -> s_tx = '1'			
				when s1 => 
					PORTC_out <= ROM(count);
					PORTB_out(2) <= '1';
					state <= s2;
				
				--master waits for s_tx = '1' and asserts m_ack
				--if m_ack = '1' -> s_tx = '0' and s_cts = '0'
				when s2 => 
					if m_ack = '1' then
						PORTB_out(1) <= '0';
						PORTB_out(2) <= '0';
						state <= s3;
					elsif m_ack = '0' then
						PORTB_out(2) <= '1';
						state <= s2;
					end if;
				
				--counter to access ROM array
				when s3 =>
					if count >= (array_size - 1) then
					sendnext<='1'; ---diko mou
						--state <= s3;Vag
						count :=0;
						--count <="0000";
						state <= smy0; ---diko mou
					elsif count < (array_size - 1) then
						count := count + 1;
						--count <= count + 1;
						sendnext<='0';---diko mou
						state <= s0;
					end if;
					
				when others =>
					state <= s0;
					
			end case;
			
		end if;
		
	end process;
					
					
				
		


end Test_myFSM;

