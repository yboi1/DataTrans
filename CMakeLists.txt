# file(GLOB main_src "./Client/src/*.c*")
# file(GLOB main_include "./Client/src/*.h")

# include_directories(../EndDecCode/include)
include_directories(/home/boyi/DataTrans/EndDecCode/include)

include_directories(/home/boyi/DataTrans/Hash/include)

include_directories(/home/boyi/DataTrans/TcpClient/include)

include_directories(/home/boyi/DataTrans/TcpServer/include)

include_directories(/home/boyi/DataTrans/Client/include)

include_directories(/home/boyi/DataTrans/Openssl/include)

include_directories(/home/boyi/DataTrans/ShareMemary/include)

include_directories(/home/boyi/DataTrans/ThreadPoll/include)
# include_directories(/home/boyi/DataTrans/Main/Client/include)
# include_directories(/home/boyi/DataTrans/Main/Client/include)


file(GLOB src "*/src/*.c*")
file(GLOB include "*/include/*.h")

file(GLOB_RECURSE to_exclude "TcpClient/*")

list(REMOVE_ITEM src ${to_exclude})

# 添加宏处理项
add_compile_definitions(M_DEBUG)

# 找到 OpenSSL 库
find_package(OpenSSL REQUIRED)




add_executable(Client ${src} ${include})

target_link_libraries(Client json)

# 将 OpenSSL 库链接到可执行文件
target_link_libraries(Client OpenSSL::Crypto)

target_link_libraries(Client protobuf)




