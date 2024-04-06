#include <iostream>
#include <ServerOP.h>
using namespace std;


int main(){
    ServerOP* op = new ServerOP("/home/boyi/DataTrans/Server/JsonSetting/setting.json");
    op->StartServer();
    return 0;
}