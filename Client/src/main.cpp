#include <iostream>
#include <string>
#include "ClientOP.h"

int printMsg(){
	std::cout<<"\n\n\n";
	std::cout<<"+--------------------------------------------------------"<<std::endl;
    std::cout<<"+--------------------------------------------------------"<<std::endl;
    std::cout<<"   请输入要进行的操作:                                     "<<std::endl;
    std::cout<<"   1. 秘钥协商             	                              "<<std::endl;
    std::cout<<"   2. 秘钥校验                  						  "<<std::endl;
    std::cout<<"   3. 秘钥注销                  						  "<<std::endl;
    std::cout<<"+--------------------------------------------------------"<<std::endl;
	std::cout<<"------------------------------------- 注:输出 88 即可退出-"<<endl;
	std::cout<<"  请选择: ";
    int num = 0;
    std::cin >> num;
	std::cout<<"+--------------------------------------------------------"<<std::endl;
	std::cout<<"\n\n";
    while(getchar() != '\n');
    return num;
}

// ClientOP Cop("../JsonSetting/setting.json");
ClientOP Cop("/home/boyi/DataTrans/Client/JsonSetting/setting.json");

int main(){
    while(1){
        int cmdType = printMsg();
        switch(cmdType){
            case 1:
                Cop.seckeyAgree();
                break;
            case 2:
                Cop.seckeyCheck();
                break;
            case 3:
				Cop.seckeyZhuXiao();
                break;
			case 88:
				goto bye;
            default:
                break;
        }
    }
bye:
    std::cout << "客户端退出~~~Bye" << std::endl;
    return 0;
}
