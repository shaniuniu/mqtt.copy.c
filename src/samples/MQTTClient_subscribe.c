/*******************************************************************************
 * Copyright (c) 2012, 2017 IBM Corp.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Eclipse Distribution License v1.0 which accompany this distribution. 
 *
 * The Eclipse Public License is available at 
 *   http://www.eclipse.org/legal/epl-v10.html
 * and the Eclipse Distribution License is available at 
 *   http://www.eclipse.org/org/documents/edl-v10.php.
 *
 * Contributors:
 *    Ian Craggs - initial contribution
 *******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
# include <errno.h>
# include <unistd.h>
# include <sys/ipc.h>
# include <sys/msg.h>
# include <sys/types.h>
#include "MQTTClient.h"
#include "msq.h"
//#define ADDRESS     "tcp://10.108.67.72:1883
#define ADDRESS     "tcp://10.108.64.133:1883"

#define CLIENTID    "ExampleClientSub"
#define TOPIC       "1/in/data/1"
#define PAYLOAD     "Hello World!"
#define QOS         1
#define TIMEOUT     10000L
volatile MQTTClient_deliveryToken deliveredtoken;
void delivered(void *context, MQTTClient_deliveryToken dt)
{
    printf("Message with token value %d delivery confirmed\n", dt);
    deliveredtoken = dt;
}
int msgarrvd(void *context, char *topicName, int topicLen, MQTTClient_message *message)
{
    int i;
    char* payloadptr;
    printf("Message arrived\n");
    printf("     topic: %s\n", topicName);
    printf("   message: ");
    payloadptr = message->payload;
    char str[1000];
    memset(str, 0x00, sizeof(str));
    for(i=0; i<message->payloadlen; i++)
    {
        str[i]=*payloadptr++;
    }
    printf("%s",str);
    putchar('\n');
    //put message into the message queue
    char *msgpath="/home/ubuntu/h17/ipc/";
    key_t key=ftok(msgpath,4);
    int ret;
    int msqid1;
    Msg serverMsg;
    msqid1 = msgget((key_t)key, 0666|IPC_CREAT);
    if( msqid1 == -1)
    {
        if(errno == EEXIST)
        {

            printf("msgget() warning: %s\n", strerror(errno));
            msqid1= msgget((key_t)key, 0666|IPC_CREAT);
            if(msqid1 == -1)
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
    printf("msgget() success. shmid=[%d]\n", msqid1);
        serverMsg.msgType = 1;
        memset(serverMsg.msgText, 0x00, sizeof(serverMsg.msgText));
        strcpy(serverMsg.msgText,str);
        ret = msgsnd(msqid1, (void*)(&serverMsg), sizeof(serverMsg.msgText), 0);
        if(ret !=0 )
        {
            printf("msgsnd1() error: %s\n", strerror(errno));
            //break;
        }
        printf("message send success\n");

        if(memcmp(serverMsg.msgText, "end", 1) == 0)
        {
            printf("over and exit\n");
            //break;
        }

        sleep(0.1);
        MQTTClient_freeMessage(&message);
        MQTTClient_free(topicName);

        return 1;
}
void connlost(void *context, char *cause)
{
    printf("\nConnection lost\n");
    printf("     cause: %s\n", cause);
}
int main(int argc, char* argv[])
{
    MQTTClient client;
    char *username= "rabbitmq"; //添加的用户名
    char *password = "rabbitmq"; //添加的密码
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    int rc;
    int ch;
    MQTTClient_create(&client, ADDRESS, CLIENTID,
                      MQTTCLIENT_PERSISTENCE_NONE, NULL);
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    conn_opts.username = "rabbitmq"; //将用户名写入连接选项中
    conn_opts.password = "rabbitmq"; //将密码写入连接选项中
    MQTTClient_setCallbacks(client, NULL, connlost, msgarrvd, delivered);
    if ((rc = MQTTClient_connect(client, &conn_opts)) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect, return code %d\n", rc);
        exit(EXIT_FAILURE);
    }
    printf("Subscribing to topic %s\nfor client %s using QoS%d\n\n"
           "Press Q<Enter> to quit\n\n", TOPIC, CLIENTID, QOS);
    MQTTClient_subscribe(client, TOPIC, QOS);
    do
    {
        ch = getchar();
    } while(ch!='Q' && ch != 'q');
    MQTTClient_unsubscribe(client, TOPIC);
    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);
    return rc;
}
