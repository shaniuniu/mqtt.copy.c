//
// Created by syy on 19-1-13.
//
/*# include <stdio.h>
# include <string.h>
# include <errno.h>
# include <unistd.h>
# include <sys/ipc.h>
# include <sys/msg.h>
# include <sys/types.h>
#include "msq.h"
int main(void) {
    char *msgpath="/home/ubuntu/h17/ipc/";
    key_t key=ftok(msgpath,4);
    int ret;
    int msqid;
    int recv_type = 1;
    Msg clientMsg;
    struct msqid_ds ds_buf;
    msqid = msgget((key_t)key, 0666|IPC_CREAT);
    if( msqid == -1)
    {
        if(errno == EEXIST)
        {

            printf("msgget() warning: %s\n", strerror(errno));
            msqid = msgget((key_t)key, 0666|IPC_CREAT);
            if(msqid == -1)
            {
                printf("msgget() error: %s\n", strerror(errno));
                return -1;
            }

        }
        else
        {

            printf("msgget() error: %s\n", strerror(errno));
            return -1;
        }
    }
    printf("msgget() success. shmid=[%d]\n", msqid);


   while(1) {

       memset(clientMsg.msgText, 0x00, sizeof(clientMsg.msgText));

       ret = msgrcv(msqid, (void *) (&clientMsg), sizeof(clientMsg.msgText), recv_type, 0);

       if (ret == -1) {
           printf("msgrcv() error: %s\n", strerror(errno));
           break;
       }

       printf("clientMsg: %s\n", clientMsg.msgText);
       if (memcmp(clientMsg.msgText, "end", 1) == 0) {
           printf("over and exit\n");
           break;
       }
       sleep(0.1);
   }

    ret = msgctl(msqid, IPC_RMID, &ds_buf);
    if(ret !=0 )
    {
        printf("msgctl() error: %s\n", strerror(errno));
    }
    printf("msgctl() success. MQ is deleted\n");
    return 0;


}*/
