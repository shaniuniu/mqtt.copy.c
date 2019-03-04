//
// Created by syy on 18-10-11.
//
//# include <stdio.h>
//# include <string.h>
//# include <errno.h>
//# include <unistd.h>
//# include <sys/ipc.h>
//# include <sys/msg.h>
//# include <sys/types.h>
//#include "msq.h"
//#include "cJSON.c"
//#include "datetime.c"
//int main(void) {
//    char *msgpath = "/home/ubuntu/h17/ipc/";
//    key_t key = ftok(msgpath, 3);
//    int ret;
//    int msqid;
//    Msg serverMsg;
//
//    msqid = msgget((key_t) key, 0666 | IPC_CREAT);
//    if (msqid == -1) {
//        if (errno == EEXIST) {
//
//            printf("msgget() warning: %s\n", strerror(errno));
//            msqid = msgget((key_t) key, 0666 | IPC_CREAT);
//            if (msqid == -1) {
//                printf("msgget() error: %s\n", strerror(errno));
//                return -1;
//            }
//
//        } else {
//
//            printf("msgget() error: %s\n", strerror(errno));
//            return -1;
//        }
//    }
//    printf("msgget() success. shmid=[%d]\n", msqid);
//
//    serverMsg.msgType = 1;
//    memset(serverMsg.msgText, 0x00, sizeof(serverMsg.msgText));
//    cJSON *root = cJSON_CreateObject();
//    cJSON *item = cJSON_CreateObject();
//    cJSON_AddItemToObject(root, "devicetype",cJSON_CreateString("1") );//根节点下添加
//    cJSON_AddItemToObject(root, "deviceid", cJSON_CreateString("4"));
//    cJSON_AddItemToObject(root, "datatype", cJSON_CreateString("0"));
//    cJSON_AddStringToObject(root, "timestamp",datetime());
//    cJSON_AddItemToObject(root, "syncdata", item);//root节点下添加syncdata节点
//    cJSON_AddItemToObject(item, "hr", cJSON_CreateString("1"));//添加hr节点
//    cJSON_AddItemToObject(item, "pr", cJSON_CreateString("2"));//添加pr节点
//    //printf("%s\n", cJSON_Print(root));
//    char *buffer = cJSON_Print(root);
//    strcpy(serverMsg.msgText, buffer);
//    ret = msgsnd(msqid, (void *) (&serverMsg), sizeof(serverMsg.msgText), 0);
//    if (ret != 0) {
//        printf("msgsnd() error: %s\n", strerror(errno));
//
//    }
//    printf("message send sucessfully\n");
//    if (memcmp(serverMsg.msgText, "end", 3) == 0) {
//        printf("over and exit\n");
//
//    }
//
//    sleep(0.1);
//    return 0;
//}
