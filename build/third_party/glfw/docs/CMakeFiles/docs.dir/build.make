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

# Utility rule file for docs.

# Include any custom commands dependencies for this target.
include third_party/glfw/docs/CMakeFiles/docs.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/glfw/docs/CMakeFiles/docs.dir/progress.make

third_party/glfw/docs/html/index.html: third_party/glfw/docs/Doxyfile
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/include/GLFW/glfw3.h
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/include/GLFW/glfw3native.h
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/main.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/news.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/quick.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/moving.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/compile.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/build.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/intro.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/context.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/monitor.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/window.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/input.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/vulkan.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/compat.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/internal.dox
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/DoxygenLayout.xml
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/header.html
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/footer.html
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/extra.css
third_party/glfw/docs/html/index.html: /home/devin/Documents/Fornax/third_party/glfw/docs/spaces.svg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/devin/Documents/Fornax/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating HTML documentation"
	cd /home/devin/Documents/Fornax/build/third_party/glfw/docs && /usr/bin/doxygen

docs: third_party/glfw/docs/html/index.html
docs: third_party/glfw/docs/CMakeFiles/docs.dir/build.make
.PHONY : docs

# Rule to build all files generated by this target.
third_party/glfw/docs/CMakeFiles/docs.dir/build: docs
.PHONY : third_party/glfw/docs/CMakeFiles/docs.dir/build

third_party/glfw/docs/CMakeFiles/docs.dir/clean:
	cd /home/devin/Documents/Fornax/build/third_party/glfw/docs && $(CMAKE_COMMAND) -P CMakeFiles/docs.dir/cmake_clean.cmake
.PHONY : third_party/glfw/docs/CMakeFiles/docs.dir/clean

third_party/glfw/docs/CMakeFiles/docs.dir/depend:
	cd /home/devin/Documents/Fornax/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/devin/Documents/Fornax /home/devin/Documents/Fornax/third_party/glfw/docs /home/devin/Documents/Fornax/build /home/devin/Documents/Fornax/build/third_party/glfw/docs /home/devin/Documents/Fornax/build/third_party/glfw/docs/CMakeFiles/docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/glfw/docs/CMakeFiles/docs.dir/depend

