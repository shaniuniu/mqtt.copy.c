//
// Created by syy on 18-11-22.
//


#include<stdio.h>
#include<stdlib.h>
#include <time.h>
#include "ran.h"
char rn[10];
char *ran()
{
    srand((unsigned int)time(NULL));
    sprintf(rn,"%d",rand());
    return rn;
}
