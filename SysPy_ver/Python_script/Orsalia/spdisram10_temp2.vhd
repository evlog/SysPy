      -- The next set of INITP_xx are for the parity bits
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO => DO,      -- 32-bit Data Output
      DOP => DOP,    -- 4-bit parity Output
      ADDR => a,  -- 9-bit Address Input
      CLK => CLK,    -- Clock
      DI => DI,      -- 32-bit Data Input
      DIP => DI(7 downto 4),    -- 4-bit parity Input
      EN => EN,      -- RAM Enable Input
      SSR => SSR,    -- Synchronous Set/Reset Input
      WE => WE       -- Write Enable Input
   );

   -- End of RAMB16_S36_inst instantiation
 
end syn;