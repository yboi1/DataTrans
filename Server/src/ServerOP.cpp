#include "ServerOP.h"
#include "json/json.h"
#include "fstream"
#include <string>

#include "RequestFactory.h"
#include "RequestCodec.h"
#include "RsaCrypto.h"
#include "RespondFactory.h"
#include "RespondCodec.h"

#include "Hash.h"
using namespace std;
using namespace Json;

ServerOP::ServerOP(string json){
    Value root;
    Reader reader;

    ifstream ifs(json);
    reader.parse(ifs, root);
    // 读取port
    m_port = root["port"].asUInt64();
    // m_serverID = root["ServerID"].asString();

}

void ServerOP::StartServer()
{
    TcpServer* s = new TcpServer;
    s->setListen(m_port);
    while(1){
        TcpSocket* tcp = s->acceptConn();
        if(tcp == NULL){
            continue;
        }

        // 子线程执行, 主线程继续监听
        pthread_t pid;
        
        pthread_create(&pid, NULL, working, this);
        // pid 需要返回以后再存放进map中!!!!
        m_map[pid] = tcp;
    }
}

// 要求: 字符串中包含: a-z, A-Z, 0-9, 特殊字符
string ServerOP::getRandKey(KeyLen len)
{
	int flag = 0;
	string randStr = string();
	char *cs = "~!@#$%^&*()_+}{|\';[]";
	for (int i = 0; i < len; ++i)
	{
		flag = rand() % 4;	// 4中字符类型
		switch (flag)
		{
		case 0:	// a-z
			randStr.append(1, 'a' + rand() % 26);
			break;
		case 1: // A-Z
			randStr.append(1, 'A' + rand() % 26);
			break;
		case 2: // 0-9
			randStr.append(1, '0' + rand() % 10);
			break;
		case 3: // 特殊字符
			randStr.append(1, cs[rand() % strlen(cs)]);
			break;
		default:
			break;
		}
	}
	return randStr;
}


// 秘钥协商, 返回对称加密的秘钥(经过公钥加密)
string ServerOP::seckeyAgree(RequestMsg* Msg){
    // 创建公钥文件, 读取公钥
    ofstream ofs("/home/boyi/DataTrans/Server/rsa/public.pem");
    // ofstream ofs("");
    ofs << Msg->data();
#ifdef M_DEBUG
    cout << "数据为: " << Msg->data() << endl;
#endif
    ofs.close();

    RespondInfo info;
    Cryptographic rsa("/home/boyi/DataTrans/Server/rsa/public.pem", false);
    // Cryptographic rsa("", false);

    // 创建哈希对象
    Hash sha(T_SHA1);
    sha.addData(Msg->data());

#ifdef M_DEBUG
        cout << "开始执行秘钥校验" << endl;
#endif

    bool bl = rsa.rsaVerify(sha.result(), Msg->sign());
    if(!bl){
        cout << "签名检验失败" << endl;
    }
    else{
        cout << "签名检验成功" << endl;
    
        // 生成对称加密的秘钥
        string key = getRandKey(Len16);

        string seckey = rsa.rsaPubKeyEncrypt(key);

        info.clientID = Msg->clientid();
        info.data = seckey;
        info.seckeyID = 12;
        info.serverID = m_serverID;
        info.status = true;
    }

    // 数据进行序列化
    CodecFactory* factory = new RespondFactory(&info);
    Codec* c = factory->createCodec();
    string encMsg = c->encodeMsg();

    return encMsg;

    
}

void* ServerOP::working(void* arg){
    sleep(1);
    string data = string();
    ServerOP* op = (ServerOP*)arg;

    // pid_t pid = getpid();
    TcpSocket* tcp = op->m_map[pthread_self()];

    string Msg = tcp->recvMsg();
#ifdef M_DEBUG
            cout << "接受数据成功!..." << endl;
#endif
    CodecFactory* factory = new RequestFactory(Msg);
    Codec* c = factory->createCodec();
    RequestMsg* req = (RequestMsg *)c->decodeMsg();

    switch(req->cmdtype()){
        case 1:
#ifdef M_DEBUG
            cout << "执行秘钥协商..." << endl;
#endif
            data = op->seckeyAgree(req);
            break;
        case 2:
            break;
        case 3:
            break;
        default:
#ifdef M_DEBUG
            cout << "cmdType error..." << endl;
#endif
            break;
    }

    delete factory;
    delete c;
    int ret = tcp->sendMsg(data);
#ifdef M_DEBUG
        if(ret)
            cout << "senMsg success!..." << endl;
#endif
    tcp->disConnect();
    op->m_map.erase(pthread_self());
    delete tcp;

#ifdef M_DEBUF
    cout << "working 完成!" << endl;
#endif
    return NULL;
}

ServerOP::~ServerOP(){
    if(m_server){
        delete m_server;
    }
}