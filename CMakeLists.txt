# define _GLIBCXX_USE_CXX11_ABI 0

file(GLOB Source "*/src/*.c*")

# set(CMAKE_PREFIX_PATH "/opt/oracle/instantclient_12_2")
foreach(source ${Source})
    get_filename_component(NAME ${source} NAME_WE)
    add_executable(${NAME} ${source})
    target_link_libraries(${NAME} occi)
    target_link_libraries(${NAME} clntsh)
endforeach()

