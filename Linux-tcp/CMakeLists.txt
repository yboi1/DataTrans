
# include_directories("./TcpClient/include")
file(GLOB Csrc "./TcpClient/*.c*")
file(GLOB Cinclude "./TcpClient/*.h")


# include_directories("./TcpServer/include")
file(GLOB Ssrc "./TcpServer/*.c*")
file(GLOB Sinclude "./TcpServer/*.h")


add_executable(Client ${Csrc} ${Cinclude})


add_executable(Server ${Ssrc} ${Sinclude})