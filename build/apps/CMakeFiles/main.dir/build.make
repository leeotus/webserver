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
CMAKE_SOURCE_DIR = /home/flareon/projects/webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/flareon/projects/webserver/build

# Include any dependencies generated for this target.
include apps/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/main.dir/flags.make

apps/CMakeFiles/main.dir/main.c.o: apps/CMakeFiles/main.dir/flags.make
apps/CMakeFiles/main.dir/main.c.o: ../apps/main.c
apps/CMakeFiles/main.dir/main.c.o: apps/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flareon/projects/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/CMakeFiles/main.dir/main.c.o"
	cd /home/flareon/projects/webserver/build/apps && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/CMakeFiles/main.dir/main.c.o -MF CMakeFiles/main.dir/main.c.o.d -o CMakeFiles/main.dir/main.c.o -c /home/flareon/projects/webserver/apps/main.c

apps/CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	cd /home/flareon/projects/webserver/build/apps && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/flareon/projects/webserver/apps/main.c > CMakeFiles/main.dir/main.c.i

apps/CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	cd /home/flareon/projects/webserver/build/apps && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/flareon/projects/webserver/apps/main.c -o CMakeFiles/main.dir/main.c.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

apps/main: apps/CMakeFiles/main.dir/main.c.o
apps/main: apps/CMakeFiles/main.dir/build.make
apps/main: src/libwebserver-core.a
apps/main: apps/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flareon/projects/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable main"
	cd /home/flareon/projects/webserver/build/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/main.dir/build: apps/main
.PHONY : apps/CMakeFiles/main.dir/build

apps/CMakeFiles/main.dir/clean:
	cd /home/flareon/projects/webserver/build/apps && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/main.dir/clean

apps/CMakeFiles/main.dir/depend:
	cd /home/flareon/projects/webserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flareon/projects/webserver /home/flareon/projects/webserver/apps /home/flareon/projects/webserver/build /home/flareon/projects/webserver/build/apps /home/flareon/projects/webserver/build/apps/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/main.dir/depend

