# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/mbill/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/mbill/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MonteCarlo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MonteCarlo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MonteCarlo.dir/flags.make

CMakeFiles/MonteCarlo.dir/main.c.o: CMakeFiles/MonteCarlo.dir/flags.make
CMakeFiles/MonteCarlo.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MonteCarlo.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MonteCarlo.dir/main.c.o   -c /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/main.c

CMakeFiles/MonteCarlo.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MonteCarlo.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/main.c > CMakeFiles/MonteCarlo.dir/main.c.i

CMakeFiles/MonteCarlo.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MonteCarlo.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/main.c -o CMakeFiles/MonteCarlo.dir/main.c.s

# Object files for target MonteCarlo
MonteCarlo_OBJECTS = \
"CMakeFiles/MonteCarlo.dir/main.c.o"

# External object files for target MonteCarlo
MonteCarlo_EXTERNAL_OBJECTS =

MonteCarlo.exe: CMakeFiles/MonteCarlo.dir/main.c.o
MonteCarlo.exe: CMakeFiles/MonteCarlo.dir/build.make
MonteCarlo.exe: CMakeFiles/MonteCarlo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable MonteCarlo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MonteCarlo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MonteCarlo.dir/build: MonteCarlo.exe

.PHONY : CMakeFiles/MonteCarlo.dir/build

CMakeFiles/MonteCarlo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MonteCarlo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MonteCarlo.dir/clean

CMakeFiles/MonteCarlo.dir/depend:
	cd /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug /cygdrive/c/Users/mbill/CLionProjects/MonteCarlo/cmake-build-debug/CMakeFiles/MonteCarlo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MonteCarlo.dir/depend

