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
static const char *ng0 = "D:/9531703-9731505/Memory/RAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3830602496_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (unsigned char)0;

LAB17:    if (t2 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = (unsigned char)0;

LAB22:    if (t2 != 0)
        goto LAB18;

LAB19:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 6114);
    *((int *)t3) = 0;
    t7 = (t0 + 6118);
    *((int *)t7) = 31;
    t8 = 0;
    t9 = 31;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    goto LAB6;

LAB9:    xsi_set_current_line(53, ng0);
    t11 = (t0 + 6114);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t11), 5);
    t13 = (t0 + 6114);
    t14 = *((int *)t13);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (5U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 3712);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 5U);
    xsi_driver_first_trans_delta(t19, t18, 5U, 0LL);

LAB10:    t1 = (t0 + 6114);
    t8 = *((int *)t1);
    t3 = (t0 + 6118);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB12:    t14 = (t8 + 1);
    t8 = t14;
    t4 = (t0 + 6114);
    *((int *)t4) = t8;
    goto LAB8;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2152U);
    t7 = *((char **)t1);
    t1 = (t0 + 1352U);
    t11 = *((char **)t1);
    t1 = (t0 + 5852U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t1);
    t9 = (t8 - 31);
    t16 = (t9 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t8);
    t17 = (5U * t16);
    t18 = (0 + t17);
    t12 = (t7 + t18);
    t13 = (t0 + 3776);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 5U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB6;

LAB15:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t24 = *((unsigned char *)t4);
    t25 = (t24 == (unsigned char)2);
    t2 = t25;
    goto LAB17;

LAB18:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 1352U);
    t11 = *((char **)t1);
    t1 = (t0 + 5852U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t1);
    t9 = (t8 - 31);
    t16 = (t9 * -1);
    t17 = (5U * t16);
    t18 = (0U + t17);
    t12 = (t0 + 3712);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 5U);
    xsi_driver_first_trans_delta(t12, t18, 5U, 0LL);
    goto LAB6;

LAB20:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t24 = *((unsigned char *)t4);
    t25 = (t24 == (unsigned char)3);
    t2 = t25;
    goto LAB22;

}


extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/RAm_tb_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
}
