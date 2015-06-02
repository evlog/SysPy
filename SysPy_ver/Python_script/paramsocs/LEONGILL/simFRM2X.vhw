--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : simFRM2X.vhw
-- /___/   /\     Timestamp : Tue Nov 15 16:29:51 2011
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: simFRM2X
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY simFRM2X IS
END simFRM2X;

ARCHITECTURE testbench_arch OF simFRM2X IS
    COMPONENT TestconnectionwithLeonFRM2X
        PORT (
            clk : In std_logic;
            send_character : In std_logic;
            restartDDR2 : In std_logic;
            enupdate : In std_logic;
            ceglobal : In std_logic;
            restartUART : In std_logic;
            choise : In std_logic;
            sclr : In std_logic;
            sclrseed : In std_logic;
            ce2out : Out std_logic;
            leds : Out std_logic_vector (7 DownTo 0);
            PORTA_in : In std_logic_vector (31 DownTo 0);
            PORTA_out : Out std_logic_vector (31 DownTo 0);
            PORTB_in : In std_logic_vector (31 DownTo 0);
            PORTB_out : Out std_logic_vector (31 DownTo 0);
            PORTC_in : In std_logic_vector (31 DownTo 0);
            PORTC_out : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '0';
    SIGNAL send_character : std_logic := '0';
    SIGNAL restartDDR2 : std_logic := '0';
    SIGNAL enupdate : std_logic := '0';
    SIGNAL ceglobal : std_logic := '0';
    SIGNAL restartUART : std_logic := '0';
    SIGNAL choise : std_logic := '0';
    SIGNAL sclr : std_logic := '0';
    SIGNAL sclrseed : std_logic := '0';
    SIGNAL ce2out : std_logic := '0';
    SIGNAL leds : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL PORTA_in : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL PORTA_out : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL PORTB_in : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL PORTB_out : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL PORTC_in : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL PORTC_out : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : TestconnectionwithLeonFRM2X
        PORT MAP (
            clk => clk,
            send_character => send_character,
            restartDDR2 => restartDDR2,
            enupdate => enupdate,
            ceglobal => ceglobal,
            restartUART => restartUART,
            choise => choise,
            sclr => sclr,
            sclrseed => sclrseed,
            ce2out => ce2out,
            leds => leds,
            PORTA_in => PORTA_in,
            PORTA_out => PORTA_out,
            PORTB_in => PORTB_in,
            PORTB_out => PORTB_out,
            PORTC_in => PORTC_in,
            PORTC_out => PORTC_out
        );

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                ceglobal <= '1';
                PORTB_in <= "00000000000000000000000000001001";
                -- -------------------------------------
                WAIT FOR 920 ns;

            END PROCESS;

    END testbench_arch;

