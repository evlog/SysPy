-- simple2.vhd
-- Generated by PySys
-- Mon May  3 17:06:34 2010

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.PySys_lib.all;

entity simple2 is
	generic (
		n : integer := 8);
	port (
		rst: in std_logic;
		clk: in std_logic;
		h_write: in std_logic;
		t_write: in std_logic;
		h_read: in std_logic;
		t_read: in std_logic;
		h_data_in: in std_logic_vector((n - 1) downto 0);
		t_data_in: in std_logic_vector((n - 1) downto 0);
		h_cts: out std_logic;
		t_cts: out std_logic;
		h_dpr: out std_logic;
		t_dpr: out std_logic;
		h_data_out: out std_logic_vector((n - 1) downto 0);
		t_data_out: out std_logic_vector((n - 1) downto 0));
end simple2;

architecture simple2_arch of simple2 is 

-- Internal signals
--------------------------------------------------------------------------
signal h_rec_buf: std_logic_vector((n - 1) downto 0) := "00000000";
signal t_rec_buf: std_logic_vector((n - 1) downto 0) := "00000000";
type state_type0 is (s0, s1, s2, s3, s4);
signal state_hrb, state_trb: state_type0;
--------------------------------------------------------------------------

begin

       proc_2: process(clk, rst) begin
              if rst = '1' then
                     h_cts  <= '1';
                     t_dpr  <= '0';
                     h_rec_buf  <= "00000000";
                     state_hrb  <= s0;
              elsif rising_edge(clk) then
                     if state_hrb = s0 then
                            if h_write = '1' then
                                   h_cts  <= '0';
                                   t_dpr  <= '0';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s1;
                            elsif h_write = '0' then
                                   h_cts  <= '1';
                                   t_dpr  <= '0';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s0;
                            end if;
                     elsif state_hrb = s1 then
                            if h_write = '0' then
                                   h_cts  <= '0';
                                   t_dpr  <= '1';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s2;
                            elsif h_write = '1' then
                                   h_cts   <= '0';
                                   t_dpr   <= '0';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s1;
                            end if;
                     elsif state_hrb = s2 then
                            if t_read = '1' then
                                   h_cts  <= '0';
                                   t_dpr  <= '1';
                                   h_rec_buf  <= h_data_in;
                                   state_hrb  <= s3;
                            elsif t_read = '0' then
                                   h_cts  <= '0';
                                   t_dpr  <= '1';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s2;
                            end if;
                     elsif state_hrb = s3 then
                            if t_read = '0' then
                                   h_cts  <= '0';
                                   t_dpr  <= '0';
                                   h_rec_buf  <= h_rec_buf;
                                   state_hrb  <= s4;
                            elsif t_read = '1' then
                                   h_cts  <= '0';
                                   t_dpr  <= '1';
                                   h_rec_buf  <= h_data_in;
                                   state_hrb  <= s3;
                            end if;
                     elsif state_hrb = s4 then
                            h_cts  <= '1';
                            t_dpr  <= '0';
                            h_rec_buf  <= h_rec_buf;
                            state_hrb  <= s0;
                     end if;
              end if;
       end process;

       t_data_out  <= h_rec_buf;
       proc_2: process(clk, rst) begin
              if rst = '1' then
                     t_cts  <= '1';
                     h_dpr  <= '0';
                     t_rec_buf  <= "00000000";
                     state_trb  <= s0;
              elsif rising_edge(clk) then
                     if state_trb = s0 then
                            if t_write = '1' then
                                   t_cts  <= '0';
                                   h_dpr  <= '0';
                                   t_rec_buf  <= h_rec_buf;
                                   state_trb  <= s1;
                            elsif t_write = '0' then
                                   t_cts  <= '1';
                                   h_dpr  <= '0';
                                   t_rec_buf  <= t_rec_buf;
                                   state_trb  <= s0;
                            end if;
                     elsif state_trb = s1 then
                            if t_write = '0' then
                                   t_cts  <= '0';
                                   h_dpr  <= '1';
                                   t_rec_buf  <= t_rec_buf;
                                   state_trb  <= s2;
                            elsif t_write = '1' then
                                   t_cts   <= '0';
                                   h_dpr   <= '0';
                                   t_rec_buf  <= t_rec_buf;
                                   state_trb  <= s1;
                            end if;
                     elsif state_trb = s2 then
                            if h_read = '1' then
                                   t_cts  <= '0';
                                   h_dpr  <= '1';
                                   t_rec_buf  <= t_data_in;
                                   state_trb  <= s3;
                            elsif h_read = '0' then
                                   t_cts  <= '0';
                                   h_dpr  <= '1';
                                   t_rec_buf  <= t_rec_buf;
                                   state_trb  <= s2;
                            end if;
                     elsif state_trb = s3 then
                            if h_read = '0' then
                                   t_cts  <= '0';
                                   h_dpr  <= '0';
                                   t_rec_buf  <= t_rec_buf;
                                   state_trb  <= s4;
                            elsif h_read = '1' then
                                   t_cts  <= '0';
                                   h_dpr  <= '1';
                                   t_rec_buf  <= t_data_in;
                                   state_trb  <= s3;
                            end if;
                     elsif state_trb = s4 then
                            t_cts  <= '1';
                            h_dpr  <= '0';
                            t_rec_buf  <= t_rec_buf;
                            state_trb  <= s0;
                     end if;
              end if;
       end process;

       h_data_out  <= t_rec_buf;
       
end simple2_arch;