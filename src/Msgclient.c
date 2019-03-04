//
// Created by syy on 19-1-13.
//
# include <stdio.h>
# include <string.h>
# include <errno.h>
# include <unistd.h>
# include <sys/ipc.h>
# include <sys/msg.h>
# include <sys/types.h>
# define MAX_MSG_LEN 1024
typedef struct MSGQUEUE
{
    long msgType;
    char msgText[MAX_MSG_LEN];

}Msg;
int main(void) {
    char *msgpath="/home/ubuntu/h17/ipc/";
    key_t key=ftok(msgpath,3);
    int ret;
    int msqid;
    int recv_type = 1;
    Msg clientMsg;
    struct msqid_ds ds_buf;

    /*msgget*/
    msqid = msgget((key_t)key, 0666|IPC_CREAT);
    if( msqid == -1)
    {
        if(errno == EEXIST)
        {
            /*Message queue has aleardy existed */
            printf("msgget() warning: %s\n", strerror(errno));
            msqid = msgget((key_t)key, 0666|IPC_CREAT); /*access the mq*/
            if(msqid == -1)
            {
                printf("msgget() error: %s\n", strerror(errno));
                return -1;
            }

        }
        else
        {
            /*msgget error*/
            printf("msgget() error: %s\n", strerror(errno));
            return -1;
        }
    }
    printf("msgget() success. shmid=[%d]\n", msqid);

    /*msgrcv*/
   while(1) {
       /*recv_type=1*/
       memset(clientMsg.msgText, 0x00, sizeof(clientMsg.msgText));

       ret = msgrcv(msqid, (void *) (&clientMsg), sizeof(clientMsg.msgText), recv_type, 0);
       /*BLOCK*/
       if (ret == -1) {
           printf("msgrcv() error: %s\n", strerror(errno));
           break;
       }

       /*output*/
       printf("clientMsg: %s\n", clientMsg.msgText);
       if (memcmp(clientMsg.msgText, "end", 3) == 0) {
           printf("over and exit\n");
           break;
       }
       sleep(0.1);
   }
   /*msgctl IPC_RMID*/
    ret = msgctl(msqid, IPC_RMID, &ds_buf);
    if(ret !=0 )
    {
        printf("msgctl() error: %s\n", strerror(errno));
    }
    printf("msgctl() success. MQ is deleted\n");


}
