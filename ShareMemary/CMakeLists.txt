
include_directories("./include")
file(GLOB src "./src/*.c*")
file(GLOB include "./include/*.h")


add_executable(ShareMemary ${src} ${include})