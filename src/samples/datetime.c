//
// Created by syy on 18-11-30.
//
#include <stdio.h>
#include "datetime.h"
char dt[256];
char  *datetime()
{
    time_t now;
    struct tm *tm_now;
    time(&now);
    tm_now = localtime(&now);
    sprintf (dt,"%d-%d-%d %d:%d:%d", (1900+tm_now->tm_year), (1+tm_now->tm_mon), tm_now->tm_mday,
             tm_now->tm_hour, tm_now->tm_min, tm_now->tm_sec);
    return dt;
}