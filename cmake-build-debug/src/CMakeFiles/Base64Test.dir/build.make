# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/syy/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/syy/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/syy/mqtt.copy.c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/syy/mqtt.copy.c/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/Base64Test.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Base64Test.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Base64Test.dir/flags.make

src/CMakeFiles/Base64Test.dir/Base64.c.o: src/CMakeFiles/Base64Test.dir/flags.make
src/CMakeFiles/Base64Test.dir/Base64.c.o: ../src/Base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/syy/mqtt.copy.c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/Base64Test.dir/Base64.c.o"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base64Test.dir/Base64.c.o   -c /home/syy/mqtt.copy.c/src/Base64.c

src/CMakeFiles/Base64Test.dir/Base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base64Test.dir/Base64.c.i"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/syy/mqtt.copy.c/src/Base64.c > CMakeFiles/Base64Test.dir/Base64.c.i

src/CMakeFiles/Base64Test.dir/Base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base64Test.dir/Base64.c.s"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/syy/mqtt.copy.c/src/Base64.c -o CMakeFiles/Base64Test.dir/Base64.c.s

src/CMakeFiles/Base64Test.dir/cJSON.c.o: src/CMakeFiles/Base64Test.dir/flags.make
src/CMakeFiles/Base64Test.dir/cJSON.c.o: ../src/cJSON.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/syy/mqtt.copy.c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/Base64Test.dir/cJSON.c.o"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base64Test.dir/cJSON.c.o   -c /home/syy/mqtt.copy.c/src/cJSON.c

src/CMakeFiles/Base64Test.dir/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base64Test.dir/cJSON.c.i"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/syy/mqtt.copy.c/src/cJSON.c > CMakeFiles/Base64Test.dir/cJSON.c.i

src/CMakeFiles/Base64Test.dir/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base64Test.dir/cJSON.c.s"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/syy/mqtt.copy.c/src/cJSON.c -o CMakeFiles/Base64Test.dir/cJSON.c.s

src/CMakeFiles/Base64Test.dir/strSHA256.c.o: src/CMakeFiles/Base64Test.dir/flags.make
src/CMakeFiles/Base64Test.dir/strSHA256.c.o: ../src/strSHA256.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/syy/mqtt.copy.c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/Base64Test.dir/strSHA256.c.o"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base64Test.dir/strSHA256.c.o   -c /home/syy/mqtt.copy.c/src/strSHA256.c

src/CMakeFiles/Base64Test.dir/strSHA256.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base64Test.dir/strSHA256.c.i"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/syy/mqtt.copy.c/src/strSHA256.c > CMakeFiles/Base64Test.dir/strSHA256.c.i

src/CMakeFiles/Base64Test.dir/strSHA256.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base64Test.dir/strSHA256.c.s"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/syy/mqtt.copy.c/src/strSHA256.c -o CMakeFiles/Base64Test.dir/strSHA256.c.s

src/CMakeFiles/Base64Test.dir/Msgclient.c.o: src/CMakeFiles/Base64Test.dir/flags.make
src/CMakeFiles/Base64Test.dir/Msgclient.c.o: ../src/Msgclient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/syy/mqtt.copy.c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/Base64Test.dir/Msgclient.c.o"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base64Test.dir/Msgclient.c.o   -c /home/syy/mqtt.copy.c/src/Msgclient.c

src/CMakeFiles/Base64Test.dir/Msgclient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base64Test.dir/Msgclient.c.i"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/syy/mqtt.copy.c/src/Msgclient.c > CMakeFiles/Base64Test.dir/Msgclient.c.i

src/CMakeFiles/Base64Test.dir/Msgclient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base64Test.dir/Msgclient.c.s"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/syy/mqtt.copy.c/src/Msgclient.c -o CMakeFiles/Base64Test.dir/Msgclient.c.s

# Object files for target Base64Test
Base64Test_OBJECTS = \
"CMakeFiles/Base64Test.dir/Base64.c.o" \
"CMakeFiles/Base64Test.dir/cJSON.c.o" \
"CMakeFiles/Base64Test.dir/strSHA256.c.o" \
"CMakeFiles/Base64Test.dir/Msgclient.c.o"

# External object files for target Base64Test
Base64Test_EXTERNAL_OBJECTS =

src/Base64Test: src/CMakeFiles/Base64Test.dir/Base64.c.o
src/Base64Test: src/CMakeFiles/Base64Test.dir/cJSON.c.o
src/Base64Test: src/CMakeFiles/Base64Test.dir/strSHA256.c.o
src/Base64Test: src/CMakeFiles/Base64Test.dir/Msgclient.c.o
src/Base64Test: src/CMakeFiles/Base64Test.dir/build.make
src/Base64Test: src/CMakeFiles/Base64Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/syy/mqtt.copy.c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Base64Test"
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Base64Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Base64Test.dir/build: src/Base64Test

.PHONY : src/CMakeFiles/Base64Test.dir/build

src/CMakeFiles/Base64Test.dir/clean:
	cd /home/syy/mqtt.copy.c/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Base64Test.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Base64Test.dir/clean

src/CMakeFiles/Base64Test.dir/depend:
	cd /home/syy/mqtt.copy.c/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/syy/mqtt.copy.c /home/syy/mqtt.copy.c/src /home/syy/mqtt.copy.c/cmake-build-debug /home/syy/mqtt.copy.c/cmake-build-debug/src /home/syy/mqtt.copy.c/cmake-build-debug/src/CMakeFiles/Base64Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Base64Test.dir/depend

