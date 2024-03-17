#include <iostream>
#include "Request.h"
#include "Response.h"
#include "Codec.h"
#include "RequestFactory.h"
#include "RespondFactory.h"

using namespace std;

int main()
{
	RequestInfo info{1, "client", "server", "sig..", "data!;;"};    // 生成信息对象
    CodecFactory *factor = new RequestFactory(&info);               //  创建RequestFactory 工厂
    Codec *code = factor->createCodec();                            // 创建出RequestCodec对象
    string str = code->encodeMsg();

    cout<<"生成的序列化数据为:"<<str<<endl;

    delete factor;
    delete code;

    // RespondInfo get;
    factor = new RequestFactory(str);
    code = factor->createCodec();
    RequestMsg* get = (RequestMsg*)code->decodeMsg();
    // cout<<"status: "<<get->status;
    cout<<"cmd id is "<< get->cmdtype()<<endl;



	return 0;
}