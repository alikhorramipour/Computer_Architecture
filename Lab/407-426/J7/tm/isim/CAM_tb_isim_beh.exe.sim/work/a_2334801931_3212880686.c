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
static const char *ng0 = "D:/9531703-9731505/Memory/CAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2334801931_3212880686_p_0(char *t0)
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
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (unsigned char)0;

LAB17:    if (t2 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = (unsigned char)0;

LAB37:    if (t2 != 0)
        goto LAB33;

LAB34:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 5945);
    *((int *)t3) = 0;
    t7 = (t0 + 5949);
    *((int *)t7) = 31;
    t8 = 0;
    t9 = 31;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    goto LAB6;

LAB9:    xsi_set_current_line(52, ng0);
    t11 = (t0 + 5945);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t11), 6);
    t13 = (t0 + 5945);
    t14 = *((int *)t13);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (6U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 3552);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 6U);
    xsi_driver_first_trans_delta(t19, t18, 6U, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5945);
    t14 = *((int *)t1);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (6U * t16);
    t18 = (0U + t17);
    t24 = (5 - 5);
    t25 = (t24 * -1);
    t26 = (1 * t25);
    t27 = (t18 + t26);
    t3 = (t0 + 3552);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, t27, 1, 0LL);

LAB10:    t1 = (t0 + 5945);
    t8 = *((int *)t1);
    t3 = (t0 + 5949);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB12:    t14 = (t8 + 1);
    t8 = t14;
    t4 = (t0 + 5945);
    *((int *)t4) = t8;
    goto LAB8;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5953);
    *((int *)t1) = 0;
    t7 = (t0 + 5957);
    *((int *)t7) = 31;
    t8 = 0;
    t9 = 31;

LAB18:    if (t8 <= t9)
        goto LAB19;

LAB21:    goto LAB6;

LAB15:    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t28 = *((unsigned char *)t4);
    t29 = (t28 == (unsigned char)2);
    t2 = t29;
    goto LAB17;

LAB19:    xsi_set_current_line(58, ng0);
    t11 = (t0 + 1992U);
    t12 = *((char **)t11);
    t16 = (5 - 4);
    t17 = (t16 * 1U);
    t11 = (t0 + 5953);
    t14 = *((int *)t11);
    t15 = (t14 - 31);
    t18 = (t15 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t11));
    t25 = (6U * t18);
    t26 = (0 + t25);
    t27 = (t26 + t17);
    t13 = (t12 + t27);
    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t30 = 1;
    if (5U == 5U)
        goto LAB25;

LAB26:    t30 = 0;

LAB27:    if (t30 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB23:
LAB20:    t1 = (t0 + 5953);
    t8 = *((int *)t1);
    t3 = (t0 + 5957);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB21;

LAB32:    t14 = (t8 + 1);
    t8 = t14;
    t4 = (t0 + 5953);
    *((int *)t4) = t8;
    goto LAB18;

LAB22:    xsi_set_current_line(59, ng0);
    t22 = (t0 + 3616);
    t23 = (t22 + 56U);
    t32 = *((char **)t23);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    *((unsigned char *)t34) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t22);
    xsi_set_current_line(60, ng0);
    goto LAB21;

LAB25:    t31 = 0;

LAB28:    if (t31 < 5U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t19 = (t13 + t31);
    t21 = (t20 + t31);
    if (*((unsigned char *)t19) != *((unsigned char *)t21))
        goto LAB26;

LAB30:    t31 = (t31 + 1);
    goto LAB28;

LAB31:    goto LAB23;

LAB33:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5961);
    *((int *)t1) = 0;
    t7 = (t0 + 5965);
    *((int *)t7) = 31;
    t8 = 0;
    t9 = 31;

LAB38:    if (t8 <= t9)
        goto LAB39;

LAB41:    goto LAB6;

LAB35:    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t28 = *((unsigned char *)t4);
    t29 = (t28 == (unsigned char)3);
    t2 = t29;
    goto LAB37;

LAB39:    xsi_set_current_line(67, ng0);
    t11 = (t0 + 1992U);
    t12 = *((char **)t11);
    t14 = (5 - 5);
    t16 = (t14 * -1);
    t17 = (1U * t16);
    t11 = (t0 + 5961);
    t15 = *((int *)t11);
    t24 = (t15 - 31);
    t18 = (t24 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t11));
    t25 = (6U * t18);
    t26 = (0 + t25);
    t27 = (t26 + t17);
    t13 = (t12 + t27);
    t30 = *((unsigned char *)t13);
    t35 = (t30 == (unsigned char)2);
    if (t35 != 0)
        goto LAB42;

LAB44:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 3552);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 5U);
    xsi_driver_first_trans_delta(t1, 1U, 5U, 0LL);

LAB43:
LAB40:    t1 = (t0 + 5961);
    t8 = *((int *)t1);
    t3 = (t0 + 5965);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB41;

LAB46:    t14 = (t8 + 1);
    t8 = t14;
    t4 = (t0 + 5961);
    *((int *)t4) = t8;
    goto LAB38;

LAB42:    xsi_set_current_line(68, ng0);
    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t19 = (t0 + 5961);
    t36 = *((int *)t19);
    t37 = (t36 - 31);
    t31 = (t37 * -1);
    t38 = (6U * t31);
    t39 = (0U + t38);
    t40 = (5 - 4);
    t41 = (1U * t40);
    t42 = (t39 + t41);
    t21 = (t0 + 3552);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t32 = (t23 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t20, 5U);
    xsi_driver_first_trans_delta(t21, t42, 5U, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5961);
    t14 = *((int *)t1);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (6U * t16);
    t18 = (0U + t17);
    t24 = (5 - 5);
    t25 = (t24 * -1);
    t26 = (1 * t25);
    t27 = (t18 + t26);
    t3 = (t0 + 3552);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, t27, 1, 0LL);
    xsi_set_current_line(70, ng0);
    goto LAB41;

LAB45:    goto LAB43;

}


extern void work_a_2334801931_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2334801931_3212880686_p_0};
	xsi_register_didat("work_a_2334801931_3212880686", "isim/CAM_tb_isim_beh.exe.sim/work/a_2334801931_3212880686.didat");
	xsi_register_executes(pe);
}
