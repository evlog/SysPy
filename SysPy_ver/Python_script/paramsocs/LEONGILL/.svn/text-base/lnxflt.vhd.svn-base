----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:22:18 04/04/2011 
-- Design Name: 
-- Module Name:    lnxflt - Behavioral 
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

entity lnxflt is
port(x:in std_logic_vector(31 downto 0);
     clk:in std_logic;
	  cnstmultflt,cnstaddflt:out std_logic_vector(31 downto 0));
end lnxflt;

architecture Behavioral of lnxflt is

signal cnst0_0263665:   std_logic_vector(31 downto 0):="00111100110101111111111010001110";
signal cnst0_00428133:  std_logic_vector(31 downto 0):="00111011100011000100101001100110";
signal cnst0_00206914:  std_logic_vector(31 downto 0):="00111011000001111001101001101000";
signal cnst0_0014384:   std_logic_vector(31 downto 0):="00111010101111001000100010110001";
signal cnst0_00297635:  std_logic_vector(31 downto 0):="00111101010000110000111011011101";
signal cnst0_00615848:  std_logic_vector(31 downto 0):="00111011110010011100110100010011";
signal cnst0_0127427:   std_logic_vector(31 downto 0):="00111100010100001100011011000001";
signal cnst0_00885867:  std_logic_vector(31 downto 0):="00111100000100010010001111110100";
signal cnst0_0379269:   std_logic_vector(31 downto 0):="00111101000110110101100100111100";
signal cnst0_162378:    std_logic_vector(31 downto 0):="00111110001001100100011001101011";
signal cnst0_078476:    std_logic_vector(31 downto 0):="00111101101000001011100000000110";
signal cnst0_0545559:   std_logic_vector(31 downto 0):="00111101010111110111011000000001";
signal cnst0_112884:    std_logic_vector(31 downto 0):="00111101111001110010111110111010";
signal cnst0_233572:    std_logic_vector(31 downto 0):="00111110011011110010110101111111";
signal cnst0_483293:    std_logic_vector(31 downto 0):="00111110111101110111001000101110";
signal cnst0_335982:    std_logic_vector(31 downto 0):="00111110101011000000010111000101";
signal cnst0_69:        std_logic_vector(31 downto 0):="00111111001100001010001111010111";
signal cnst4_8612:      std_logic_vector(31 downto 0):="01000000100110111000111011110011";--"00000000010000000000001001";
signal cnst825_681:     std_logic_vector(31 downto 0):="01000100010011100110101110010101";
signal cnst574_007:     std_logic_vector(31 downto 0):="01000100000011111000000001110010";
signal cnst277_414:     std_logic_vector(31 downto 0):="01000011100010101011010011111101";
signal cnst399_046:     std_logic_vector(31 downto 0):="01000011110001111000010111100011";
signal cnst134_072:     std_logic_vector(31 downto 0):="01000011000001100001001001101110";
signal cnst93_206:      std_logic_vector(31 downto 0):="01000010101110100110100101111000";
signal cnst45_0458:     std_logic_vector(31 downto 0):="01000010001101000010111011100110";
signal cnst64_7961:     std_logic_vector(31 downto 0):="01000010100000011001011110011010";
signal cnst192_856:     std_logic_vector(31 downto 0):="01000011010000001101101100100010";
signal cnst21_7703:     std_logic_vector(31 downto 0):="01000001101011100010100110010011";
signal cnst15_1346:     std_logic_vector(31 downto 0):="01000001011100100010011101010010";
signal cnst7_72178:     std_logic_vector(31 downto 0):="01000000111101110001100011010010";--"00000001111011100000000000";
signal cnst7_35822:     std_logic_vector(31 downto 0):="01000000111010110111011010001001";--"00000001110101110000000000";
signal cnst7_31443:     std_logic_vector(31 downto 0):="01000000111010100000111111001111";
signal cnst6_63109:     std_logic_vector(31 downto 0):="01000000110101000011000111100011";--"00000001101010000000000000";
signal cnst6_99465:     std_logic_vector(31 downto 0):="01000000110111111101010000101100";
signal cnst5_90395:     std_logic_vector(31 downto 0):="01000000101111001110110100101000";--"00000001011110100000000000";
signal cnst5_54039:     std_logic_vector(31 downto 0):="01000000101100010100101011011110";--="00000001011000110000000000";
signal cnst4_81325:     std_logic_vector(31 downto 0):="01000000100110100000011000100100";--="00000001001110000000000000";
signal cnst5_17682:     std_logic_vector(31 downto 0):="01000000101001011010100010000010";--"00000001010011000000000000";
signal cnst6_27752:     std_logic_vector(31 downto 0):="01000000110010001000111110000110";--"00000001100100010000000000";
signal cnst4_08612:     std_logic_vector(31 downto 0):="01000000100000101100000101111110";
signal cnst3_72256:     std_logic_vector(31 downto 0):="01000000011011100011111001101100";--"00000000111111000000000000";
signal cnst2_99542:     std_logic_vector(31 downto 0):="01000000001111111011010011110110";--"00000000101111111000000000";
signal cnst10_5214:     std_logic_vector(31 downto 0):="01000001001010000101011110100111";
signal cnst3_35899:     std_logic_vector(31 downto 0):="01000000010101101110100110110001";--"00000000000111100000000000";
signal cnst3_53501:     std_logic_vector(31 downto 0):="01000000011000100011110110011010";
signal cnst2_26829:     std_logic_vector(31 downto 0):="01000000000100010010101110101001";--"00000000100100001000000000";
signal cnst2_63186:     std_logic_vector(31 downto 0):="01000000001010000111000001100100";--"00000000101010000000000000";
signal cnst2_45752:     std_logic_vector(31 downto 0):="01000000000111010010101010000100";
signal cnst1_1877:      std_logic_vector(31 downto 0):="00111111100110000000011010001101";
signal cnst1_187:       std_logic_vector(31 downto 0):="00111111100101111110111110011101";
--signal cnst1_18:        std_logic_vector(31 downto 0):="00111111100110000101000111101011";
signal cnst0_0183298:   std_logic_vector(31 downto 0):="00111100100101100010100001100000";
signal cnst1_90473:     std_logic_vector(31 downto 0):="00111111111100111100111000110001";--"00000000011110100000000000";
signal cnst1_17759:     std_logic_vector(31 downto 0):="00111111100101101011101101000100";--"00000000010010110000000000";
--signal cnst1_17:        std_logic_vector(31 downto 0):="00111111100101110000101000111101";--"00000000010010110000000000";
signal cnst1_70845:     std_logic_vector(31 downto 0):="00111111110110101010111001111101";
signal cnst1_54116:     std_logic_vector(31 downto 0):="00111111110001010100010010111011";--"00000000011000110000000000";
signal cnst31_3155:     std_logic_vector(31 downto 0):="01000001111110101000011000100100";
signal cnst5_08499:     std_logic_vector(31 downto 0):="01000000101000101011011111010100";
signal cnst4_44969:     std_logic_vector(31 downto 0):="01000000100011100110001111011100";--"00000001000111001100000000";
signal cnst0_98:        std_logic_vector(31 downto 0):="00111111011110101110000101000111";
signal cnst0_85:        std_logic_vector(31 downto 0):="00111111010110011001100110011001";   
--signal y0int:         std_logic_vector(51 downto 0):="0000000000000000000000000000000000000000000000000000";
signal cnst1_19:        std_logic_vector(31 downto 0):="00111111100110000101000111101011";
signal cnst0_0001:      std_logic_vector(31 downto 0):="00111000110100011011011100010111";
signal cnst0_00001:     std_logic_vector(31 downto 0):="00110111001001111100010110101100";
signal cnst200:         std_logic_vector(31 downto 0):="01000011010010000000000000000000"; 
signal cnst1145:        std_logic_vector(31 downto 0):="01000100100011110010000000000000";              
signal cnst9_99:        std_logic_vector(31 downto 0):="01000001000111111101011100001010";
signal cnst11_39:       std_logic_vector(31 downto 0):="01000001001101100011110101110000";
begin
process(clk)
begin
if clk'event and clk='1' then
  if x<cnst0_0263665 then
   if x<cnst0_00428133 then
    if x<cnst0_00206914 then
      if x<cnst0_0014384 then
		 if x<=cnst0_0001 then
		   if x<=cnst0_00001 then
			   cnstmultflt <= cnst1145;
				  cnstaddflt  <=cnst11_39;
			 else		
		     cnstmultflt <= cnst200;
			   cnstaddflt  <=cnst9_99 ;
			 end if;
		elsif x>cnst0_0001 then 
        cnstmultflt <= cnst825_681;--y = fi(825.681,T1,F)*x + fi(-7.72178,T1,F);% here 1
         cnstaddflt<=cnst7_72178;	
        	 	  
		else
		    cnstmultflt <= cnst574_007;
         cnstaddflt<= cnst7_35822 ;--y = fi(574.007,T1,F)*x + fi(-7.35822,T1,F);
		end if;
	end if;	
		
	 elsif x>cnst0_00297635 then
	 cnstmultflt <= cnst277_414 ;
      cnstaddflt<= cnst6_63109;--y = fi(277.414,T1,F)*x + fi(-6.63109,T1,F);% here 4
	 else
     cnstmultflt <= cnst399_046 ;--y = fi(399.046,T1,F)*x + fi(-6.99465,T1,F);
	   cnstaddflt <=cnst6_99465;
    end if;
	 
	elsif x>cnst0_00615848 then
       if x<cnst0_0127427 then
          if x<cnst0_00885867 then
			   cnstmultflt <= cnst134_072;
              cnstaddflt<= cnst5_90395;--y = fi(134.072,T1,F)*x + fi(-5.90395,T1,F);% here 6  
			  else
			   cnstmultflt <= cnst93_206  ;
              cnstaddflt<= cnst5_54039 ;--y = fi(93.206,T1,F)*x + fi(-5.54039,T1,F);
			 end if;
		elsif x>cnst0_0183298 then
		 cnstmultflt <= cnst45_0458;
         cnstaddflt<=cnst4_81325;--y = fi(45.0458,T1,F)*x + fi(-4.81325,T1,F);% here 9
	  else
       cnstmultflt <= cnst64_7961 ;--y = fi(64.7961,T1,F)*x + fi(-5.17682,T1,F);
		  cnstaddflt <= cnst5_17682;
	  end if; 
   else
   cnstmultflt  <= cnst192_856;--y = fi(192.856,T1,F)*x + fi(-6.26752,T1,F);
	cnstaddflt   <= cnst6_27752;
   end if;
elsif x>cnst0_0379269 then
     if x< cnst0_162378 then
        if x< cnst0_078476 then
          if x< cnst0_0545559 then
            cnstmultflt  <= cnst21_7703;
				  cnstaddflt<=cnst4_8612;--y = fi(21.7703,T1,F)*x + fi(-4.08612,T1,F);% here 11
			  else
            cnstmultflt <= cnst15_1346;--y = fi(15.1346,T1,F)*x + fi(-3.72256,T1,F);
				 cnstaddflt<= cnst3_72256 ;
           end if;
       elsif x>cnst0_112884 then
		   cnstmultflt <=cnst7_31443;
         cnstaddflt<= cnst2_99542;--y = fi(7.31443,T1,F)*x + fi(-2.99542,T1,F);% here 14
		 else
         cnstmultflt <= cnst10_5214;--y = fi(10.5214,T1,F)*x + fi(-3.35899,T1,F);
			  cnstaddflt<= cnst3_35899 ;
      end if;
	 elsif x> cnst0_233572 then
         if x<cnst0_483293 then
           if x<cnst0_335982 then
			    cnstmultflt <= cnst3_53501;
               cnstaddflt<= cnst2_26829;--y = fi(3.53501,T1,F)*x + fi(-2.26829,T1,F);% here 16
			 else
			  cnstmultflt <= cnst2_45752;
             cnstaddflt<= cnst1_90473 ;--y = fi(2.45752,T1,F)*x + fi(-1.90473,T1,F);
			 end if;
		 elsif x>cnst0_69 then
		 -------------*****************
		    if x>=cnst0_98 then
			 cnstmultflt  <= cnst1_187;
			 cnstaddflt<= cnst1_1877 ;
			 elsif x>=cnst0_85 then
			 cnstmultflt  <= cnst1_19;
			 cnstaddflt<= cnst1_17759 ;
			 else
		   cnstmultflt  <= cnst1_1877;
			  cnstaddflt<= cnst1_17759 ;--y = fi(1.1877,T1,F)*x + fi(-1.17759,T1,F);% here 19
          end if;  
		 else 
		    cnstmultflt <= cnst1_70845;
			  cnstaddflt<= cnst1_54116 ;--y = fi(1.70845,T1,F)*x + fi(-1.54116,T1,F);
		 end if;
    else 
        cnstmultflt <= cnst5_08499;
		   cnstaddflt<= cnst2_63186 ;--y = fi(5.08494,T1,F)*x + fi(-2.63186,T1,F);
	 end if; 
 else 
  cnstmultflt <= cnst31_3155; 
    cnstaddflt<= cnst4_44969;--y = fi(31.3155,T1,F)*x + fi(-4.44969,T1,F);
    
end if;
end if;--% end code
end process;
--yout<=y(25 downto 0);
end Behavioral;





