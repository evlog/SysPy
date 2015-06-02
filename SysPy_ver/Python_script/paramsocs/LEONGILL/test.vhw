--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : test.vhw
-- /___/   /\     Timestamp : Wed Oct 26 08:03:42 2011
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test
--Device: Xilinx
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_1164.All;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY test IS
END test;

ARCHITECTURE testbench_arch OF test IS
    COMPONENT testmaximumval
        PORT (
            XLXN_1 : In STD_LOGIC_VECTOR (31 DownTo 0);
            XLXN_2 : In STD_LOGIC_VECTOR (31 DownTo 0);
            XLXN_3 : In STD_LOGIC_VECTOR (5 DownTo 0);
            XLXN_4 : In STD_LOGIC;
            XLXN_5 : In STD_LOGIC;
            XLXN_6 : In STD_LOGIC;
            XLXN_7 : Out STD_LOGIC_VECTOR (31 DownTo 0);
            XLXN_8 : Out STD_LOGIC
        );
    END COMPONENT;

    SIGNAL XLXN_1 : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL XLXN_2 : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL XLXN_3 : STD_LOGIC_VECTOR (5 DownTo 0) := "000000";
    SIGNAL XLXN_4 : STD_LOGIC := '0';
    SIGNAL XLXN_5 : STD_LOGIC := '0';
    SIGNAL XLXN_6 : STD_LOGIC := '0';
    SIGNAL XLXN_7 : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL XLXN_8 : STD_LOGIC := '0';

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : testmaximumval
        PORT MAP (
            XLXN_1 => XLXN_1,
            XLXN_2 => XLXN_2,
            XLXN_3 => XLXN_3,
            XLXN_4 => XLXN_4,
            XLXN_5 => XLXN_5,
            XLXN_6 => XLXN_6,
            XLXN_7 => XLXN_7,
            XLXN_8 => XLXN_8
        );

        PROCESS    -- clock process for XLXN_6
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                XLXN_6 <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                XLXN_6 <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                XLXN_5 <= '1';
                XLXN_1 <= "01001010000000000000000000000000";
                XLXN_2 <= "01001010000000000000000000000000";
                -- -------------------------------------
                WAIT FOR 920 ns;

            END PROCESS;

    END testbench_arch;

