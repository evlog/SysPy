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

/* This file is designed for use with ISim build 0xf1e83c0a */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void simprim_a_2198831044_3980060181_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 1540);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void simprim_a_2198831044_3980060181_init()
{
	static char *pe[] = {(void *)simprim_a_2198831044_3980060181_p_0};
	xsi_register_didat("simprim_a_2198831044_3980060181", "isim/test_core_gen2_wrapper_tb_isim_par.exe.sim/simprim/a_2198831044_3980060181.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0695295778_3980060181_init()
{
	static char *pe[] = {(void *)simprim_a_2198831044_3980060181_p_0};
	xsi_register_didat("simprim_a_0695295778_3980060181", "isim/test_core_gen2_wrapper_tb_isim_par.exe.sim/simprim/a_0695295778_3980060181.didat");
	xsi_register_executes(pe);
}
