# file(GLOB main_src "./Client/src/*.c*")
# file(GLOB main_include "./Client/src/*.h")


# 设置编译选项，添加 -g 选项以启用调试信息
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")


# 将头文件包含进来
# include_directories(../EndDecCode/include)
include_directories(/home/boyi/DataTrans/EndDecCode/include)

include_directories(/home/boyi/DataTrans/Hash/include)

include_directories(/home/boyi/DataTrans/TcpClient/include)

include_directories(/home/boyi/DataTrans/TcpServer/include)

include_directories(/home/boyi/DataTrans/Client/include)

include_directories(/home/boyi/DataTrans/Openssl/include)

include_directories(/home/boyi/DataTrans/ShareMemary/include)

include_directories(/home/boyi/DataTrans/ThreadPoll/include)

include_directories(/home/boyi/DataTrans/Server/include)
# include_directories(/home/boyi/DataTrans/Main/Client/include)
# include_directories(/home/boyi/DataTrans/Main/Client/include)

#===========构造客户端

file(GLOB c_src "*/src/*.c*")
file(GLOB c_include "*/include/*.h")
file(GLOB c_json "./Client/JsonSetting/*")
file(GLOB c_rsa "/home/boyi/DataTrans/Server/rsa")

# 移除此目录下的文件
# file(GLOB_RECURSE TcpClient_fi "TcpClient/*")
file(GLOB_RECURSE Server_fi "Server/*")
# list(REMOVE_ITEM c_src ${TcpClient_fi})
list(REMOVE_ITEM c_src ${Server_fi})


#==========构造服务器端

file(GLOB s_src "*/src/*.c*")
file(GLOB s_include "*/include/*.h")
file(GLOB s_json "./Server/JsonSetting/*")
file(GLOB s_rsa "/home/boyi/DataTrans/Server/rsa/*")


# 移除此目录下的文件
# file(GLOB_RECURSE TcpClient_fi "TcpClient/*")
file(GLOB_RECURSE Client_fi "Client/*")
# list(REMOVE_ITEM c_src ${TcpClient_fi})
list(REMOVE_ITEM s_src ${Client_fi})



# 添加宏处理项
add_compile_definitions(M_DEBUG)

# 找到 OpenSSL 库
find_package(OpenSSL REQUIRED)




add_executable(Client ${c_src} ${c_include} ${c_json} ${c_rsa})

target_link_libraries(Client json)

# 将 OpenSSL 库链接到可执行文件
target_link_libraries(Client OpenSSL::Crypto)

target_link_libraries(Client protobuf)


add_executable(Server ${s_src} ${s_include} ${s_json} ${s_rsa})

target_link_libraries(Server json)

# 将 OpenSSL 库链接到可执行文件
target_link_libraries(Server OpenSSL::Crypto)

target_link_libraries(Server protobuf)



