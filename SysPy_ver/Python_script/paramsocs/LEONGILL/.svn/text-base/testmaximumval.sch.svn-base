VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex5"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(31:0)
        SIGNAL XLXN_2(31:0)
        SIGNAL XLXN_3(5:0)
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7(31:0)
        SIGNAL XLXN_8
        PORT Input XLXN_1(31:0)
        PORT Input XLXN_2(31:0)
        PORT Input XLXN_3(5:0)
        PORT Input XLXN_4
        PORT Input XLXN_5
        PORT Input XLXN_6
        PORT Output XLXN_7(31:0)
        PORT Output XLXN_8
        BEGIN BLOCKDEF addnewflt
            TIMESTAMP 2011 10 26 4 57 50
            RECTANGLE N 32 32 480 384 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 176 32 176 
            END LINE
            LINE N 0 304 32 304 
            LINE N 0 336 32 336 
            LINE N 144 416 144 384 
            BEGIN LINE W 512 80 480 80 
            END LINE
            LINE N 512 240 480 240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 addnewflt
            PIN a(31:0) XLXN_1(31:0)
            PIN b(31:0) XLXN_2(31:0)
            PIN operation(5:0) XLXN_3(5:0)
            PIN sclr XLXN_4
            PIN ce XLXN_5
            PIN clk XLXN_6
            PIN result(31:0) XLXN_7(31:0)
            PIN rdy XLXN_8
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1088 688 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(31:0)
            WIRE 1056 768 1088 768
        END BRANCH
        IOMARKER 1056 768 XLXN_1(31:0) R180 28
        BEGIN BRANCH XLXN_2(31:0)
            WIRE 1056 800 1088 800
        END BRANCH
        IOMARKER 1056 800 XLXN_2(31:0) R180 28
        BEGIN BRANCH XLXN_3(5:0)
            WIRE 1056 864 1088 864
        END BRANCH
        IOMARKER 1056 864 XLXN_3(5:0) R180 28
        BEGIN BRANCH XLXN_4
            WIRE 1056 992 1088 992
        END BRANCH
        IOMARKER 1056 992 XLXN_4 R180 28
        BEGIN BRANCH XLXN_5
            WIRE 1056 1024 1088 1024
        END BRANCH
        IOMARKER 1056 1024 XLXN_5 R180 28
        BEGIN BRANCH XLXN_6
            WIRE 1232 1104 1232 1136
        END BRANCH
        IOMARKER 1232 1136 XLXN_6 R90 28
        BEGIN BRANCH XLXN_7(31:0)
            WIRE 1600 768 1632 768
        END BRANCH
        IOMARKER 1632 768 XLXN_7(31:0) R0 28
        BEGIN BRANCH XLXN_8
            WIRE 1600 928 1632 928
        END BRANCH
        IOMARKER 1632 928 XLXN_8 R0 28
    END SHEET
END SCHEMATIC
