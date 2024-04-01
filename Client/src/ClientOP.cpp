#include "ClientOP.h"
#include <json/json.h>
#include <fstream>
#include <sstream>
#include "RequestFactory.h"
#include "RequestCodec.h"
#include "RsaCrypto.h"
#include "TcpSocket.h"
#include "RespondFactory.h"
#include "RespondCodec.h"
#include "Message.pb.h"
#include "Hash.h"
using namespace std;
using namespace Json;

ClientOP::ClientOP(string jsonFile)
{
#ifdef M_DEBUG
	cout << "请稍等! 数据正在努力加载中!..." << endl;
#endif

	// Value root;
	// Reader reader;
	// //	 以二进制格式打开
	// ifstream ifs(jsonFile);
	// reader.parse(ifs, root);
	ifstream ifs(jsonFile);
	Reader rd;
	Value root;
	rd.parse(ifs, root);

	// 将json文件写入到成员中
	m_info.serverID = root["ServerID"].asString();
	m_info.clientID = root["ClientID"].asString();
	m_info.ip = root["ServerIP"].asString();
	m_info.port = root["Port"].asInt();

#ifdef M_DEBUG
	cout << "port is " << m_info.port << endl;
#endif


}

ClientOP::~ClientOP()
{
}

// 秘钥协商
bool ClientOP::seckeyAgree()
{
	Cryptographic rsa;
	rsa.generateRsakey(1024, "/home/boyi/DataTrans/Client/rsa/public.pem", "/home/boyi/DataTrans/Client/rsa/private.pem");
	ifstream ifs("/home/boyi/DataTrans/Client/rsa/public.pem");
	stringstream str;
	str << ifs.rdbuf();

	// 对序列化数据初始化
	RequestInfo reqInfo;
	reqInfo.clientID = m_info.clientID;
	reqInfo.serverID = m_info.serverID;
	reqInfo.cmd = 1;
	reqInfo.data = str.str();
#ifdef M_DEBUG
	cout << "str : " << str.str() << endl;
#endif
	// 创建哈希对象
	Hash a(T_SHA1);
	a.addData(str.str());
	// 将数据进行签名, 传入数据 以及(加密方式)
	reqInfo.sign = rsa.rsaSign(a.result());


	CodecFactory* factory = new RequestFactory(&reqInfo);
	Codec *c = factory->createCodec();
	string encstr = c->encodeMsg();
	delete factory;
	delete c;

	// 套接字通信 连接服务器
	TcpSocket* tcp = new TcpSocket();
	// cout << "ip: " << m_info.ip << endl;
	int ret = tcp->connectToHost(m_info.ip, m_info.port);
	if(ret != 0){
		cout << " connectToHost error " << endl;
		return false;
	}
	
#ifdef M_DEBUG
		if(ret==0)
            cout << "连接服务器成功!..." << endl;
#endif

	ret = tcp->sendMsg(encstr);
#ifdef M_DEBUG
		if(ret==0)
            cout << "数据发送成功!..." << endl;
#endif

	string msg = tcp->recvMsg();

	// 接受服务器发送过来的 对称加密秘钥
	factory = new RespondFactory(msg);
	c = factory->createCodec();
	RespondMsg* resMsg = (RespondMsg*)c->decodeMsg();

	if(!resMsg->status()){
		cout << "秘钥协商失败..." << endl;
		return false;
	}
	string key = rsa.rsaPriKeyDecrypt(resMsg->data());

#ifdef M_DEBUG
	cout << "对称加密的秘钥为: " << key << endl;
#endif

	delete factory;
	delete c;
	delete tcp;


	return 1;
}

void ClientOP::seckeyCheck()
{
}

void ClientOP::seckeyZhuXiao()
{
}
