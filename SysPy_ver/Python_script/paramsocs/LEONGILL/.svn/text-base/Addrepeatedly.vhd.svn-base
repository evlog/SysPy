library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Addrepeatedly is
   port ( ceaddrepeat : in    std_logic; 
          clk         : in    std_logic; 
          opadd_r     : in    std_logic_vector (5 downto 0); 
          Qinnew      : in    std_logic_vector (31 downto 0); 
          sclr        : in    std_logic; 
          selFSM      : in    std_logic; 
          timemin     : in    std_logic_vector (31 downto 0); 
          go          : out   std_logic; 
          rdyr        : out   std_logic; 
          timeshow    : out   std_logic_vector (31 downto 0));
end Addrepeatedly;

architecture BEHAVIORAL of Addrepeatedly is
   signal sclrint:std_logic:='0';
   signal XLXN_9,timeminint         : std_logic_vector (31 downto 0);
   signal timeshow_DUMMY : std_logic_vector (31 downto 0);
	
   component addnewflt
      port ( a         : in    std_logic_vector (31 downto 0); 
             b         : in    std_logic_vector (31 downto 0); 
             operation : in    std_logic_vector (5 downto 0); 
             sclr      : in    std_logic; 
             ce        : in    std_logic; 
             clk       : in    std_logic; 
             result    : out   std_logic_vector (31 downto 0); 
             rdy       : out   std_logic);
   end component;
   
   component MUxforrepeat
      port ( clk    : in    std_logic; 
             selFSm : in    std_logic; 
             Qinnew : in    std_logic_vector (31 downto 0); 
             Qinold : in    std_logic_vector (31 downto 0); 
             go     : out   std_logic; 
             Qout   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   timeshow(31 downto 0) <= timeshow_DUMMY(31 downto 0);


process(timemin,clk,sclr)
begin
 if clk'event and clk='1' then
   if sclr='1' then---
	   timeminint<="00000000000000000000000000000000";-- 
		else ---
         if timemin >="01111111100000000000000000000000" then
		    timeminint<=timeminint; 
			 else
          timeminint<=timemin;
			end if;
     end if;
  end if;	---  
 end process;	  
	
   XLXI_1 : addnewflt
      port map (a(31 downto 0)=> timeminint(31 downto 0),
                b(31 downto 0)=>XLXN_9(31 downto 0),
                ce=>ceaddrepeat,
                clk=>clk,
                operation(5 downto 0)=>opadd_r(5 downto 0),
                sclr=>sclrint,
                rdy=>rdyr,
                result(31 downto 0)=>timeshow_DUMMY(31 downto 0));
   
   XLXI_2 : MUxforrepeat
      port map (clk=>clk,
                Qinnew(31 downto 0)=>Qinnew(31 downto 0),
                Qinold(31 downto 0)=>timeshow_DUMMY(31 downto 0),
                selFSm=>selFSM,
                go=>go,
                Qout(31 downto 0)=>XLXN_9(31 downto 0));
   
end BEHAVIORAL;
