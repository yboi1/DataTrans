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
CMAKE_SOURCE_DIR = /home/boyi/DataTrans/Main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/boyi/DataTrans/Main/build

# Include any dependencies generated for this target.
include CMakeFiles/Client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client.dir/flags.make

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o: /home/boyi/DataTrans/EndDecCode/src/Codec.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o -c /home/boyi/DataTrans/EndDecCode/src/Codec.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/Codec.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/Codec.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o: /home/boyi/DataTrans/EndDecCode/src/CodecFactory.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o -c /home/boyi/DataTrans/EndDecCode/src/CodecFactory.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/CodecFactory.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/CodecFactory.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o: /home/boyi/DataTrans/EndDecCode/src/Message.pb.cc
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o -c /home/boyi/DataTrans/EndDecCode/src/Message.pb.cc

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/Message.pb.cc > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/Message.pb.cc -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o: /home/boyi/DataTrans/EndDecCode/src/Request.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o -c /home/boyi/DataTrans/EndDecCode/src/Request.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/Request.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/Request.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o: /home/boyi/DataTrans/EndDecCode/src/RequestFactory.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o -c /home/boyi/DataTrans/EndDecCode/src/RequestFactory.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/RequestFactory.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/RequestFactory.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o: /home/boyi/DataTrans/EndDecCode/src/RespondFactory.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o -c /home/boyi/DataTrans/EndDecCode/src/RespondFactory.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/RespondFactory.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/RespondFactory.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.s

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o: /home/boyi/DataTrans/EndDecCode/src/Response.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o -c /home/boyi/DataTrans/EndDecCode/src/Response.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/EndDecCode/src/Response.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.i

CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/EndDecCode/src/Response.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.s

CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o: /home/boyi/DataTrans/Hash/src/Hash.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o -c /home/boyi/DataTrans/Hash/src/Hash.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/Hash/src/Hash.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.i

CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/Hash/src/Hash.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.s

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o: /home/boyi/DataTrans/ShareMemary/src/BaseShm.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o -c /home/boyi/DataTrans/ShareMemary/src/BaseShm.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/ShareMemary/src/BaseShm.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.i

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/ShareMemary/src/BaseShm.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.s

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o: /home/boyi/DataTrans/ShareMemary/src/SecKeyShm.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o -c /home/boyi/DataTrans/ShareMemary/src/SecKeyShm.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/ShareMemary/src/SecKeyShm.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.i

CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/ShareMemary/src/SecKeyShm.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.s

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o: /home/boyi/DataTrans/ThreadPoll/src/Logger.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o -c /home/boyi/DataTrans/ThreadPoll/src/Logger.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/ThreadPoll/src/Logger.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.i

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/ThreadPoll/src/Logger.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.s

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o: /home/boyi/DataTrans/ThreadPoll/src/TaskQueue.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o -c /home/boyi/DataTrans/ThreadPoll/src/TaskQueue.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/ThreadPoll/src/TaskQueue.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.i

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/ThreadPoll/src/TaskQueue.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.s

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o: /home/boyi/DataTrans/ThreadPoll/src/ThreadPool.cpp
CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o: CMakeFiles/Client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o -MF CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o.d -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o -c /home/boyi/DataTrans/ThreadPoll/src/ThreadPool.cpp

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boyi/DataTrans/ThreadPoll/src/ThreadPool.cpp > CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.i

CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boyi/DataTrans/ThreadPoll/src/ThreadPool.cpp -o CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.s

# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o" \
"CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Codec.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/CodecFactory.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Message.pb.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Request.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RequestFactory.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/RespondFactory.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/EndDecCode/src/Response.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/Hash/src/Hash.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/BaseShm.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/ShareMemary/src/SecKeyShm.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/Logger.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/TaskQueue.o
Client: CMakeFiles/Client.dir/home/boyi/DataTrans/ThreadPoll/src/ThreadPool.o
Client: CMakeFiles/Client.dir/build.make
Client: /usr/local/lib/libcrypto.so
Client: CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boyi/DataTrans/Main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable Client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client.dir/build: Client
.PHONY : CMakeFiles/Client.dir/build

CMakeFiles/Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Client.dir/clean

CMakeFiles/Client.dir/depend:
	cd /home/boyi/DataTrans/Main/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boyi/DataTrans/Main /home/boyi/DataTrans/Main /home/boyi/DataTrans/Main/build /home/boyi/DataTrans/Main/build /home/boyi/DataTrans/Main/build/CMakeFiles/Client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Client.dir/depend

