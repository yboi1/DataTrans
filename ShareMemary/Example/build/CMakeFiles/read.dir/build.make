# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/boyi/DataTrans/EndDecCode/example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/boyi/DataTrans/EndDecCode/example/build

# Include any dependencies generated for this target.
include CMakeFiles/read.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/read.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/read.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/read.dir/flags.make

CMakeFiles/read.dir/rShm.c.o: CMakeFiles/read.dir/flags.make
CMakeFiles/read.dir/rShm.c.o: ../rShm.c
CMakeFiles/read.dir/rShm.c.o: CMakeFiles/read.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/EndDecCode/example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/read.dir/rShm.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/read.dir/rShm.c.o -MF CMakeFiles/read.dir/rShm.c.o.d -o CMakeFiles/read.dir/rShm.c.o -c /home/boyi/DataTrans/EndDecCode/example/rShm.c

CMakeFiles/read.dir/rShm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/read.dir/rShm.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boyi/DataTrans/EndDecCode/example/rShm.c > CMakeFiles/read.dir/rShm.c.i

CMakeFiles/read.dir/rShm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/read.dir/rShm.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boyi/DataTrans/EndDecCode/example/rShm.c -o CMakeFiles/read.dir/rShm.c.s

# Object files for target read
read_OBJECTS = \
"CMakeFiles/read.dir/rShm.c.o"

# External object files for target read
read_EXTERNAL_OBJECTS =

read: CMakeFiles/read.dir/rShm.c.o
read: CMakeFiles/read.dir/build.make
read: CMakeFiles/read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boyi/DataTrans/EndDecCode/example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable read"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/read.dir/build: read
.PHONY : CMakeFiles/read.dir/build

CMakeFiles/read.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/read.dir/cmake_clean.cmake
.PHONY : CMakeFiles/read.dir/clean

CMakeFiles/read.dir/depend:
	cd /home/boyi/DataTrans/EndDecCode/example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boyi/DataTrans/EndDecCode/example /home/boyi/DataTrans/EndDecCode/example /home/boyi/DataTrans/EndDecCode/example/build /home/boyi/DataTrans/EndDecCode/example/build /home/boyi/DataTrans/EndDecCode/example/build/CMakeFiles/read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/read.dir/depend

