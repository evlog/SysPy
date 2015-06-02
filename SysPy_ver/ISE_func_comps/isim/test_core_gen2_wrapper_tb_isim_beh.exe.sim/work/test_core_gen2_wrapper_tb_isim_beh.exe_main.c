/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3972351953;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_2342578331;
char *IEEE_P_0774719531;
char *IEEE_P_3499444699;
char *XILINXCORELIB_P_1317117406;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    ieee_p_3972351953_init();
    std_textio_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_2342578331_init();
    xilinxcorelib_p_1317117406_init();
    xilinxcorelib_a_3902677583_3212880686_init();
    work_a_1309242901_4225723083_init();
    work_a_4087052071_0268267262_init();
    work_a_3236076091_2372691052_init();


    xsi_register_tops("work_a_3236076091_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_2342578331 = xsi_get_engine_memory("xilinxcorelib_p_2342578331");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    XILINXCORELIB_P_1317117406 = xsi_get_engine_memory("xilinxcorelib_p_1317117406");

    return xsi_run_simulation(argc, argv);

}
