# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/devin/Documents/Fornax

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/devin/Documents/Fornax/build

# Include any dependencies generated for this target.
include third_party/taskflow/unittests/CMakeFiles/control_flow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include third_party/taskflow/unittests/CMakeFiles/control_flow.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/taskflow/unittests/CMakeFiles/control_flow.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/taskflow/unittests/CMakeFiles/control_flow.dir/flags.make

third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o: third_party/taskflow/unittests/CMakeFiles/control_flow.dir/flags.make
third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o: /home/devin/Documents/Fornax/third_party/taskflow/unittests/control_flow.cpp
third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o: third_party/taskflow/unittests/CMakeFiles/control_flow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/devin/Documents/Fornax/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o -MF CMakeFiles/control_flow.dir/control_flow.cpp.o.d -o CMakeFiles/control_flow.dir/control_flow.cpp.o -c /home/devin/Documents/Fornax/third_party/taskflow/unittests/control_flow.cpp

third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/control_flow.dir/control_flow.cpp.i"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/devin/Documents/Fornax/third_party/taskflow/unittests/control_flow.cpp > CMakeFiles/control_flow.dir/control_flow.cpp.i

third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/control_flow.dir/control_flow.cpp.s"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/devin/Documents/Fornax/third_party/taskflow/unittests/control_flow.cpp -o CMakeFiles/control_flow.dir/control_flow.cpp.s

# Object files for target control_flow
control_flow_OBJECTS = \
"CMakeFiles/control_flow.dir/control_flow.cpp.o"

# External object files for target control_flow
control_flow_EXTERNAL_OBJECTS =

third_party/taskflow/unittests/control_flow: third_party/taskflow/unittests/CMakeFiles/control_flow.dir/control_flow.cpp.o
third_party/taskflow/unittests/control_flow: third_party/taskflow/unittests/CMakeFiles/control_flow.dir/build.make
third_party/taskflow/unittests/control_flow: third_party/taskflow/unittests/CMakeFiles/control_flow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/devin/Documents/Fornax/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable control_flow"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/control_flow.dir/link.txt --verbose=$(VERBOSE)
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && /usr/bin/cmake -D TEST_TARGET=control_flow -D TEST_EXECUTABLE=/home/devin/Documents/Fornax/build/third_party/taskflow/unittests/control_flow -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/devin/Documents/Fornax/build/third_party/taskflow/unittests -D TEST_SPEC= -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_LIST=control_flow_TESTS -D CTEST_FILE=/home/devin/Documents/Fornax/build/third_party/taskflow/unittests/control_flow_tests-b858cb2.cmake -P /home/devin/Documents/Fornax/third_party/taskflow/3rd-party/doctest/doctestAddTests.cmake

# Rule to build all files generated by this target.
third_party/taskflow/unittests/CMakeFiles/control_flow.dir/build: third_party/taskflow/unittests/control_flow
.PHONY : third_party/taskflow/unittests/CMakeFiles/control_flow.dir/build

third_party/taskflow/unittests/CMakeFiles/control_flow.dir/clean:
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/unittests && $(CMAKE_COMMAND) -P CMakeFiles/control_flow.dir/cmake_clean.cmake
.PHONY : third_party/taskflow/unittests/CMakeFiles/control_flow.dir/clean

third_party/taskflow/unittests/CMakeFiles/control_flow.dir/depend:
	cd /home/devin/Documents/Fornax/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/devin/Documents/Fornax /home/devin/Documents/Fornax/third_party/taskflow/unittests /home/devin/Documents/Fornax/build /home/devin/Documents/Fornax/build/third_party/taskflow/unittests /home/devin/Documents/Fornax/build/third_party/taskflow/unittests/CMakeFiles/control_flow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/taskflow/unittests/CMakeFiles/control_flow.dir/depend
