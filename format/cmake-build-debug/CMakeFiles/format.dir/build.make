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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rakshith/CLionProjects/format

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rakshith/CLionProjects/format/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/format.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/format.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/format.dir/flags.make

CMakeFiles/format.dir/main.cpp.o: CMakeFiles/format.dir/flags.make
CMakeFiles/format.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rakshith/CLionProjects/format/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/format.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/format.dir/main.cpp.o -c /Users/rakshith/CLionProjects/format/main.cpp

CMakeFiles/format.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/format.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rakshith/CLionProjects/format/main.cpp > CMakeFiles/format.dir/main.cpp.i

CMakeFiles/format.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/format.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rakshith/CLionProjects/format/main.cpp -o CMakeFiles/format.dir/main.cpp.s

# Object files for target format
format_OBJECTS = \
"CMakeFiles/format.dir/main.cpp.o"

# External object files for target format
format_EXTERNAL_OBJECTS =

format: CMakeFiles/format.dir/main.cpp.o
format: CMakeFiles/format.dir/build.make
format: CMakeFiles/format.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rakshith/CLionProjects/format/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable format"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/format.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/format.dir/build: format

.PHONY : CMakeFiles/format.dir/build

CMakeFiles/format.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format.dir/clean

CMakeFiles/format.dir/depend:
	cd /Users/rakshith/CLionProjects/format/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rakshith/CLionProjects/format /Users/rakshith/CLionProjects/format /Users/rakshith/CLionProjects/format/cmake-build-debug /Users/rakshith/CLionProjects/format/cmake-build-debug /Users/rakshith/CLionProjects/format/cmake-build-debug/CMakeFiles/format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/format.dir/depend

