# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2018.1.5/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.1.5/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/henrique/Desenvolvimento/personal/socket_linux/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socket_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socket_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket_server.dir/flags.make

CMakeFiles/socket_server.dir/main.c.o: CMakeFiles/socket_server.dir/flags.make
CMakeFiles/socket_server.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socket_server.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socket_server.dir/main.c.o   -c /home/henrique/Desenvolvimento/personal/socket_linux/server/main.c

CMakeFiles/socket_server.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socket_server.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/henrique/Desenvolvimento/personal/socket_linux/server/main.c > CMakeFiles/socket_server.dir/main.c.i

CMakeFiles/socket_server.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socket_server.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/henrique/Desenvolvimento/personal/socket_linux/server/main.c -o CMakeFiles/socket_server.dir/main.c.s

CMakeFiles/socket_server.dir/main.c.o.requires:

.PHONY : CMakeFiles/socket_server.dir/main.c.o.requires

CMakeFiles/socket_server.dir/main.c.o.provides: CMakeFiles/socket_server.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/socket_server.dir/build.make CMakeFiles/socket_server.dir/main.c.o.provides.build
.PHONY : CMakeFiles/socket_server.dir/main.c.o.provides

CMakeFiles/socket_server.dir/main.c.o.provides.build: CMakeFiles/socket_server.dir/main.c.o


# Object files for target socket_server
socket_server_OBJECTS = \
"CMakeFiles/socket_server.dir/main.c.o"

# External object files for target socket_server
socket_server_EXTERNAL_OBJECTS =

socket_server: CMakeFiles/socket_server.dir/main.c.o
socket_server: CMakeFiles/socket_server.dir/build.make
socket_server: CMakeFiles/socket_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable socket_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket_server.dir/build: socket_server

.PHONY : CMakeFiles/socket_server.dir/build

CMakeFiles/socket_server.dir/requires: CMakeFiles/socket_server.dir/main.c.o.requires

.PHONY : CMakeFiles/socket_server.dir/requires

CMakeFiles/socket_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket_server.dir/clean

CMakeFiles/socket_server.dir/depend:
	cd /home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/henrique/Desenvolvimento/personal/socket_linux/server /home/henrique/Desenvolvimento/personal/socket_linux/server /home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug /home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug /home/henrique/Desenvolvimento/personal/socket_linux/server/cmake-build-debug/CMakeFiles/socket_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket_server.dir/depend

