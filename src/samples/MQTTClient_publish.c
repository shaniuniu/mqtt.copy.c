

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "MQTTClient.h"
# include <errno.h>
# include <unistd.h>
# include <sys/ipc.h>
# include <sys/msg.h>
# include <sys/types.h>
#include "cJSON.c"
#include "datetime.c"
#include "ran.c"
#include "msq.h"
#include "strSHA256.c"
//#define ADDRESS     "tcp://10.108.67.72:1883"
#define ADDRESS     "tcp://10.108.64.133:1883"

#define CLIENTID    "ExampleClientPub"
#define TOPIC       "1/out/data/1"
#define QOS         1
#define TIMEOUT     10000L
#define USERNAME    "rabbitmq"
#define PASSWORD    "rabbitmq"
int main(void) {
    char *msgpath = "/home/ubuntu/h17/ipc/";
    key_t key = ftok(msgpath, 3);
    int ret;
    int msqid;
    int recv_type = 1;
    Msg clientMsg;
    struct msqid_ds ds_buf;
    /*msgget*/
    msqid = msgget((key_t) key, 0666 | IPC_CREAT);
    if (msqid == -1) {
        if (errno == EEXIST) {
            /*Message queue has aleardy existed */
            printf("msgget() warning: %s\n", strerror(errno));
            msqid = msgget((key_t) key, 0666 | IPC_CREAT); /*access the mq*/
            if (msqid == -1) {
                printf("msgget() error: %s\n", strerror(errno));
                return -1;
            }
        } else {
            /*msgget error*/
            printf("msgget() error: %s\n", strerror(errno));
            return -1;
        }
    }
    printf("msgget() success. shmid=[%d]\n", msqid);
        //声明一个MQTTClient
        MQTTClient client;
        //初始化MQTT Client选项
        MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
        //#define MQTTClient_message_initializer { {'M', 'Q', 'T', 'M'}, 0, 0, NULL, 0, 0, 0, 0 }
        MQTTClient_message pubmsg = MQTTClient_message_initializer;
        //声明消息token
        MQTTClient_deliveryToken token;
        int rc;
        //使用参数创建一个client，并将其赋值给之前声明的client
        MQTTClient_create(&client, ADDRESS, CLIENTID,
                          MQTTCLIENT_PERSISTENCE_NONE, NULL);
        conn_opts.keepAliveInterval = 20;
        conn_opts.cleansession = 1;
        conn_opts.username = USERNAME;
        conn_opts.password = PASSWORD;
        //使用MQTTClient_connect将client连接到服务器，使用指定的连接选项。成功则返回MQTTCLIENT_SUCCESS
        if ((rc = MQTTClient_connect(client, &conn_opts)) != MQTTCLIENT_SUCCESS) {
            printf("Failed to connect, return code %d\n", rc);
            exit(EXIT_FAILURE);
        }

    /*msgrcv*/
    while (1) {
        /*recv_type=1*/
        memset(clientMsg.msgText, 0x00, sizeof(clientMsg.msgText));
        ret = msgrcv(msqid, (void *) (&clientMsg), sizeof(clientMsg.msgText), recv_type, 0);  /*BLOCK*/
        if (ret == -1) {
            printf("msgrcv() error: %s\n", strerror(errno));
            break;
        }
        /*output*/
        printf("clientMsg: %s\n", clientMsg.msgText);
        /*if (memcmp(clientMsg.msgText, "end", 3) == 0) {
            printf("over and exit\n");
            break;
        }
        sleep(0.1);*/
        cJSON *root = cJSON_CreateObject();
        cJSON *item = cJSON_CreateObject();
        cJSON_AddStringToObject(root, "msgtype", "realtime");
        cJSON_AddStringToObject(root, "userid", "1");
        cJSON_AddStringToObject(root, "timestamp", datetime());
        cJSON_AddStringToObject(root, "nonce", ran());
        char *b=clientMsg.msgText;
        printf("\n%s\n",b);
        item=cJSON_Parse(b);
        cJSON_AddItemToObject(root, "data", item);//root节点下添加semantic节点
        char *last = cJSON_PrintUnformatted(item);
        char text[200];
        char str1[] = "userid=1&timestamp=";
        char *str2 = datetime();
        char str3[] = "&nonce=";
        char *str4 = ran();
        char *str5 = "&data=";
        strcpy(text, str1);
        strcat(text, str2);
        strcat(text, str3);
        strcat(text, str4);
        strcat(text, str5);
        strcat(text, last);
        printf("%s\n", text);
        char sha256[65];
        StrSHA256(text, strlen(text), sha256);  // sizeof()计算的结果包含了末尾的'\0'应减1
        puts(sha256);
        cJSON_AddStringToObject(root, "sign", sha256);
        char *buf = cJSON_Print(root);

        pubmsg.payload = buf;
        pubmsg.payloadlen = strlen(buf);
        pubmsg.qos = QOS;
        pubmsg.retained = 0;
        MQTTClient_publishMessage(client, TOPIC, &pubmsg, &token);
        rc = MQTTClient_waitForCompletion(client, token, TIMEOUT);
    }
	 MQTTClient_disconnect(client, 10000);
        MQTTClient_destroy(&client);

/*msgctl IPC_RMID*/
    ret = msgctl(msqid, IPC_RMID, &ds_buf);
    if (ret != 0) {
        printf("msgctl() error: %s\n", strerror(errno));
    }
    printf("msgctl() success. MQ is deleted\n");
    return 0;
}



