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
CMAKE_SOURCE_DIR = /home/henrique/Desenvolvimento/personal/socket_linux/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socket_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socket_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket_client.dir/flags.make

CMakeFiles/socket_client.dir/main.c.o: CMakeFiles/socket_client.dir/flags.make
CMakeFiles/socket_client.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socket_client.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socket_client.dir/main.c.o   -c /home/henrique/Desenvolvimento/personal/socket_linux/client/main.c

CMakeFiles/socket_client.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socket_client.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/henrique/Desenvolvimento/personal/socket_linux/client/main.c > CMakeFiles/socket_client.dir/main.c.i

CMakeFiles/socket_client.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socket_client.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/henrique/Desenvolvimento/personal/socket_linux/client/main.c -o CMakeFiles/socket_client.dir/main.c.s

CMakeFiles/socket_client.dir/main.c.o.requires:

.PHONY : CMakeFiles/socket_client.dir/main.c.o.requires

CMakeFiles/socket_client.dir/main.c.o.provides: CMakeFiles/socket_client.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/socket_client.dir/build.make CMakeFiles/socket_client.dir/main.c.o.provides.build
.PHONY : CMakeFiles/socket_client.dir/main.c.o.provides

CMakeFiles/socket_client.dir/main.c.o.provides.build: CMakeFiles/socket_client.dir/main.c.o


# Object files for target socket_client
socket_client_OBJECTS = \
"CMakeFiles/socket_client.dir/main.c.o"

# External object files for target socket_client
socket_client_EXTERNAL_OBJECTS =

socket_client: CMakeFiles/socket_client.dir/main.c.o
socket_client: CMakeFiles/socket_client.dir/build.make
socket_client: CMakeFiles/socket_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable socket_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket_client.dir/build: socket_client

.PHONY : CMakeFiles/socket_client.dir/build

CMakeFiles/socket_client.dir/requires: CMakeFiles/socket_client.dir/main.c.o.requires

.PHONY : CMakeFiles/socket_client.dir/requires

CMakeFiles/socket_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket_client.dir/clean

CMakeFiles/socket_client.dir/depend:
	cd /home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/henrique/Desenvolvimento/personal/socket_linux/client /home/henrique/Desenvolvimento/personal/socket_linux/client /home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug /home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug /home/henrique/Desenvolvimento/personal/socket_linux/client/cmake-build-debug/CMakeFiles/socket_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket_client.dir/depend

