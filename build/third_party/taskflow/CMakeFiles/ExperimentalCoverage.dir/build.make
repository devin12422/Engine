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

# Utility rule file for ExperimentalCoverage.

# Include any custom commands dependencies for this target.
include third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/progress.make

third_party/taskflow/CMakeFiles/ExperimentalCoverage:
	cd /home/devin/Documents/Fornax/build/third_party/taskflow && /usr/bin/ctest -D ExperimentalCoverage

ExperimentalCoverage: third_party/taskflow/CMakeFiles/ExperimentalCoverage
ExperimentalCoverage: third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/build.make
.PHONY : ExperimentalCoverage

# Rule to build all files generated by this target.
third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/build: ExperimentalCoverage
.PHONY : third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/build

third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/clean:
	cd /home/devin/Documents/Fornax/build/third_party/taskflow && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalCoverage.dir/cmake_clean.cmake
.PHONY : third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/clean

third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/depend:
	cd /home/devin/Documents/Fornax/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/devin/Documents/Fornax /home/devin/Documents/Fornax/third_party/taskflow /home/devin/Documents/Fornax/build /home/devin/Documents/Fornax/build/third_party/taskflow /home/devin/Documents/Fornax/build/third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/taskflow/CMakeFiles/ExperimentalCoverage.dir/depend

