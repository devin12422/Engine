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
include third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/flags.make

third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o: third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/flags.make
third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o: /home/devin/Documents/Fornax/third_party/taskflow/examples/text_pipeline.cpp
third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o: third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/devin/Documents/Fornax/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o -MF CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o.d -o CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o -c /home/devin/Documents/Fornax/third_party/taskflow/examples/text_pipeline.cpp

third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/text_pipeline.dir/text_pipeline.cpp.i"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/devin/Documents/Fornax/third_party/taskflow/examples/text_pipeline.cpp > CMakeFiles/text_pipeline.dir/text_pipeline.cpp.i

third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/text_pipeline.dir/text_pipeline.cpp.s"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/devin/Documents/Fornax/third_party/taskflow/examples/text_pipeline.cpp -o CMakeFiles/text_pipeline.dir/text_pipeline.cpp.s

# Object files for target text_pipeline
text_pipeline_OBJECTS = \
"CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o"

# External object files for target text_pipeline
text_pipeline_EXTERNAL_OBJECTS =

third_party/taskflow/examples/text_pipeline: third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/text_pipeline.cpp.o
third_party/taskflow/examples/text_pipeline: third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/build.make
third_party/taskflow/examples/text_pipeline: third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/devin/Documents/Fornax/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable text_pipeline"
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/text_pipeline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/build: third_party/taskflow/examples/text_pipeline
.PHONY : third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/build

third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/clean:
	cd /home/devin/Documents/Fornax/build/third_party/taskflow/examples && $(CMAKE_COMMAND) -P CMakeFiles/text_pipeline.dir/cmake_clean.cmake
.PHONY : third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/clean

third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/depend:
	cd /home/devin/Documents/Fornax/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/devin/Documents/Fornax /home/devin/Documents/Fornax/third_party/taskflow/examples /home/devin/Documents/Fornax/build /home/devin/Documents/Fornax/build/third_party/taskflow/examples /home/devin/Documents/Fornax/build/third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/taskflow/examples/CMakeFiles/text_pipeline.dir/depend

