library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seerng1 is
      port (   clk            : in     std_logic;
               enable         : in     std_logic;
               reset          : in     std_logic;
               dOut           : out    std_logic_vector(63 downto 0));
end seerng1;

architecture General of seerng1 is

   -- Declare types
   subtype CELL_ROW is std_logic_vector(0 to 7);
   type CELL_SQUARE is array (0 to 7) of CELL_ROW;

   -- Declare cell array
   signal cells : CELL_SQUARE := ((others => '0'),(others => '0'),
                                 (others => '0'),(others => '0'),
                                 (others => '0'),(others => '0'),
                                 (others => '0'),(others => '0'));
-- Declare function to calculate cell next state
   function getCellOutput( cell3 : std_logic; cell2 : std_logic;
                           cell1 : std_logic; cell0 : std_logic) return std_logic is

      variable output : std_logic := '0';
      variable input  : std_logic_vector(3 downto 0) := (others => '0');

   begin

      input := cell3 & cell2 & cell1 & cell0;
-- CA 27225
      -- h6A59
      -- b0110 1010 0101 1001

      case input is
         when b"0000" => output := '1';
         when b"0001" => output := '0';
         when b"0010" => output := '0';
         when b"0011" => output := '1';

         when b"0100" => output := '1';
         when b"0101" => output := '0';
         when b"0110" => output := '1';
         when b"0111" => output := '0';

         when b"1000" => output := '0';
         when b"1001" => output := '1';
         when b"1010" => output := '0';
         when b"1011" => output := '1';

         when b"1100" => output := '0';
         when b"1101" => output := '1';
         when b"1110" => output := '1';
         when b"1111" => output := '0';

         when others  => output := '0';

      end case;

      return output;

   end function;
	
begin

-- Convert the cell array into a linear output
OutputConnect_row : for row in 0 to 7 generate
begin

   OutputConnect_col : for col in 0 to 7 generate
      constant cellNum : natural := (row * 8) + col;
   begin

      dOut(cellNum) <= cells(row)(col);

   end generate;

end generate;

--- Connect the cell array
Connect_row : for row in 0 to 7 generate
   constant cell0row : integer := (row+6) mod 8;   -- 2n
   constant cell1row : integer := row;             -- c
   constant cell2row : integer := (row+7) mod 8;   -- n
   constant cell3row : integer := (row+2) mod 8;   -- 2s

begin

   Connect_col : for col in 0 to 7 generate
      constant cell0col : integer := (col+6) mod 8;   -- 2w
      constant cell1col : integer := col;             -- c
      constant cell2col : integer := (col+2) mod 8;   -- 2e
      constant cell3col : integer := (col+1) mod 8;   -- e
   begin

	
CellUpdate : process(clk)

         variable cell0 : std_logic:= '0';
         variable cell1 : std_logic:= '0';
         variable cell2 : std_logic:= '0';
         variable cell3 : std_logic:= '0';

      begin

         if (clk'event and clk='1') then

            if (reset='1') then

               if (row=7 and col=7) then
                  cells(row)(col) <= '1'; -- Reset cell 7,7 to 1

               else
                  cells(row)(col) <= '0'; -- Reset all other cells to '0'

               end if;

            elsif (enable='1') then
               cell3 := cells(cell3row)(cell3col);
               cell2 := cells(cell2row)(cell2col);
               cell1 := cells(cell1row)(cell1col);
               cell0 := cells(cell0row)(cell0col);

               cells(row)(col) <= getCellOutput(cell3, cell2, cell1, cell0);

            end if;

         end if;

      end process;

   end generate;

end generate;

end General;