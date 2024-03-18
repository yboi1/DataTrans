cmake_minimum_required(VERSION 3.0)

file(GLOB SOURCE "*.c")

foreach(obj ${SOURCE})

    get_filename_component(objname ${obj} NAME_WE)

    add_executable(${objname} ${obj})
    
endforeach()


# add_executable(read rShm.c)
# add_executable(write wShm.c)