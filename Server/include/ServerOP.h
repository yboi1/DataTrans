#pragma once
#include <string>
#include "TcpServer.h"
#include "TcpSocket.h"
#include "Message.pb.h"
#include "OCCIOP.h"
// #include "SeckKeyNodeInfo.h"

class ServerOP
{
public:
    ServerOP(string json);

    void StartServer();
    // 需要设置为静态函数, 否则回调函数无法正常调用
    static void* working(void *arg);

    enum KeyLen {Len16=16, Len24=24, Len32=32};
    string getRandKey(KeyLen key);
    string seckeyAgree(RequestMsg* reqMsg);

    ~ServerOP();
private:
    unsigned short m_port;
    string m_serverID;
    map<unsigned int, TcpSocket*> m_map;
    TcpServer *m_server = NULL;

    string m_usrdb;
    string m_passdb;
    string m_connstr;
   
    OCCIOP m_occi;
};

void* workHard(void* arg);