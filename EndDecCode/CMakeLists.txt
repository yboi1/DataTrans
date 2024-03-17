#cmake_mininum_required(VERSION 3.15)

project(DataTrans)

# include_directories(${PROJECT_SOURCE_DIR}/include)

# 添加头文件索引目录
include_directories(./Include)

file(GLOB src src/*.c*)
file(GLOB Include Include/*.h)

# aux_source_directory(. SRC)
# add_executable(main ${SRC})

# 创建可执行程序
add_executable(DataTrans ${Include} ${src})
# add_subdirectory(third_party/onnx EXCLUDE_FROM_ALL)

# 添加动态库
target_link_libraries(DataTrans protobuf)