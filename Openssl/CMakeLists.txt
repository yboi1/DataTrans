file(GLOB src "./src/*.c*")

# include_directories("openssl/")
add_executable(test ${src})

# 找到 OpenSSL 库
find_package(OpenSSL REQUIRED)

# 将 OpenSSL 库链接到你的可执行文件
target_link_libraries(test OpenSSL::Crypto)

# target_link_libraries(test ${protobuf})