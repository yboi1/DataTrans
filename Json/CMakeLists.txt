cmake_minimum_required(VERSION 3.22)

file(GLOB src "./src/*.c*")
file(GLOB json "./seting/*")

add_executable(Json_test ${src} ${json})

# link_directories(/usr/lib)
# find_package(json REQUIRED)
target_link_libraries(Json_test json)