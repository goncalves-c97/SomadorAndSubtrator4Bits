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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Documents/SomadorSubtrator4Bits/SomadorProj/somador4bits.vhd";
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_1306448836232566608_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_1496620905533649268_2162500114(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_970019341842465249_2162500114(char *, char *, char *, int );


static void work_a_2509313486_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;

LAB0:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6168U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 6168U);
    t6 = ieee_p_0774719531_sub_1496620905533649268_2162500114(IEEE_P_0774719531, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB2;

LAB3:    t11 = (t0 + 3704);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 3768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6200U);
    t4 = (t0 + 6236);
    t6 = (t1 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t16 = (3 - 0);
    t8 = (t16 * 1);
    t8 = (t8 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t8;
    t10 = ieee_p_0774719531_sub_1306448836232566608_2162500114(IEEE_P_0774719531, t3, t2, t4, t1);
    if (t10 != 0)
        goto LAB4;

LAB6:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3832);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB5:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6200U);
    t10 = ieee_p_0774719531_sub_970019341842465249_2162500114(IEEE_P_0774719531, t3, t2, 0);
    if (t10 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3896);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB8:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 3624);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(4U, t9, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(38, ng0);
    t7 = (t0 + 3832);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB5;

LAB7:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 3896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

}


extern void work_a_2509313486_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2509313486_3212880686_p_0};
	xsi_register_didat("work_a_2509313486_3212880686", "isim/somador4bits_isim_beh.exe.sim/work/a_2509313486_3212880686.didat");
	xsi_register_executes(pe);
}
