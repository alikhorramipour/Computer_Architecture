/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/407 - 426/J11/notPipelined.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0466447149_3212880686_p_0(char *t0)
{
    char t3[16];
    char t4[16];
    char t5[16];
    char *t1;
    unsigned char t2;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 5004U);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t8 = (t0 + 5020U);
    t10 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t5, t7, t6, t9, t8);
    t11 = (t0 + 1512U);
    t12 = *((char **)t11);
    t11 = (t0 + 5036U);
    t13 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t4, t10, t5, t12, t11);
    t14 = (t0 + 1672U);
    t15 = *((char **)t14);
    t14 = (t0 + 5052U);
    t16 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t3, t13, t4, t15, t14);
    t17 = (t0 + 3392);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB3;

}


extern void work_a_0466447149_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0466447149_3212880686_p_0};
	xsi_register_didat("work_a_0466447149_3212880686", "isim/tbnotPipelined_isim_beh.exe.sim/work/a_0466447149_3212880686.didat");
	xsi_register_executes(pe);
}
