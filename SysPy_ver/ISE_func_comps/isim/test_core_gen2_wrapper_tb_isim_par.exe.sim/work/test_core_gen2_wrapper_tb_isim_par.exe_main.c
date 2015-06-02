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

char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    simprim_p_0947159679_init();
    simprim_p_4208868169_init();
    simprim_a_2887117417_2431929443_init();
    simprim_a_3379745071_2431929443_init();
    simprim_a_0674658236_2431929443_init();
    simprim_a_0929431741_2431929443_init();
    simprim_a_1375812603_2431929443_init();
    simprim_a_3007683944_2431929443_init();
    simprim_a_3592594990_2431929443_init();
    simprim_a_1099118976_2431929443_init();
    simprim_a_0618922694_2431929443_init();
    simprim_a_3315639381_2431929443_init();
    simprim_a_2447068514_2431929443_init();
    simprim_a_4105991716_2431929443_init();
    simprim_a_0368627895_2431929443_init();
    simprim_a_1889528817_2431929443_init();
    simprim_a_3125910909_2431929443_init();
    simprim_a_0722138833_2431929443_init();
    simprim_a_1315818903_2431929443_init();
    simprim_a_0854769078_2431929443_init();
    simprim_a_3214403602_2431929443_init();
    simprim_a_1590906497_2431929443_init();
    simprim_a_3321628102_2431929443_init();
    simprim_a_1297173754_2431929443_init();
    simprim_a_2697436947_2431929443_init();
    simprim_a_1001682375_2431929443_init();
    simprim_a_0663374799_2431929443_init();
    simprim_a_1528118254_2431929443_init();
    simprim_a_1122857097_2431929443_init();
    simprim_a_0756304375_3879906181_init();
    simprim_a_0748795114_3879906181_init();
    simprim_a_0682117049_3879906181_init();
    simprim_a_0819697749_3879906181_init();
    simprim_a_0829318472_3879906181_init();
    simprim_a_2169979203_4055128042_init();
    simprim_a_0773051140_4055128042_init();
    simprim_a_3559792723_4055128042_init();
    simprim_a_3326392248_4055128042_init();
    simprim_a_1761617407_4055128042_init();
    simprim_a_2470303400_4055128042_init();
    simprim_a_1014580463_4055128042_init();
    simprim_a_0259042485_4055128042_init();
    simprim_a_2687778546_4055128042_init();
    simprim_a_1510591909_4055128042_init();
    simprim_a_3878144009_4055128042_init();
    simprim_a_2937569829_1957906245_init();
    simprim_a_1214197973_1957906245_init();
    simprim_a_0792770539_1957906245_init();
    simprim_a_1857086279_1957906245_init();
    simprim_a_2351025649_1957906245_init();
    simprim_a_1102398925_1957906245_init();
    simprim_a_3136882386_1957906245_init();
    simprim_a_0283899663_1957906245_init();
    simprim_a_1205483777_1957906245_init();
    simprim_a_1312470725_1957906245_init();
    simprim_a_2106400015_1957906245_init();
    simprim_a_0114000822_1957906245_init();
    simprim_a_1188503308_1957906245_init();
    simprim_a_3219000575_1957906245_init();
    simprim_a_1023055420_1957906245_init();
    simprim_a_0238345744_1957906245_init();
    simprim_a_2031570767_1957906245_init();
    simprim_a_4064097308_1957906245_init();
    simprim_a_1213735806_1957906245_init();
    simprim_a_2656611860_1957906245_init();
    simprim_a_3790341484_1957906245_init();
    simprim_a_0215389298_1957906245_init();
    simprim_a_2618410731_1957906245_init();
    simprim_a_1177032707_1957906245_init();
    simprim_a_2341473171_1957906245_init();
    simprim_a_2863686290_1957906245_init();
    simprim_a_0940247375_1957906245_init();
    simprim_a_3559829917_2341067045_init();
    simprim_a_3492233934_2341067045_init();
    simprim_a_3670628684_2341067045_init();
    simprim_a_3737168415_2341067045_init();
    simprim_a_3386990655_2341067045_init();
    simprim_a_2198831044_3980060181_init();
    simprim_a_0695295778_3980060181_init();
    simprim_a_3813031962_4150518722_init();
    simprim_a_2761342731_4150518722_init();
    simprim_a_2085995565_4150518722_init();
    simprim_a_0018689797_4150518722_init();
    simprim_a_1187893268_4150518722_init();
    simprim_a_3938265395_2220797900_init();
    simprim_a_3644137209_2082082460_init();
    simprim_a_2966591649_2082082460_init();
    simprim_a_2348823582_3380326129_init();
    simprim_a_2267341357_1178295121_init();
    work_a_4087052071_0632001823_init();
    work_a_3236076091_2372691052_init();


    xsi_register_tops("work_a_3236076091_2372691052");

    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
