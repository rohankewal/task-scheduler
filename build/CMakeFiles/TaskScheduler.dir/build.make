# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rohan/Developer/c++/task-scheduler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rohan/Developer/c++/task-scheduler/build

# Include any dependencies generated for this target.
include CMakeFiles/TaskScheduler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TaskScheduler.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TaskScheduler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TaskScheduler.dir/flags.make

CMakeFiles/TaskScheduler.dir/src/main.cpp.o: CMakeFiles/TaskScheduler.dir/flags.make
CMakeFiles/TaskScheduler.dir/src/main.cpp.o: /Users/rohan/Developer/c++/task-scheduler/src/main.cpp
CMakeFiles/TaskScheduler.dir/src/main.cpp.o: CMakeFiles/TaskScheduler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohan/Developer/c++/task-scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TaskScheduler.dir/src/main.cpp.o"
	/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TaskScheduler.dir/src/main.cpp.o -MF CMakeFiles/TaskScheduler.dir/src/main.cpp.o.d -o CMakeFiles/TaskScheduler.dir/src/main.cpp.o -c /Users/rohan/Developer/c++/task-scheduler/src/main.cpp

CMakeFiles/TaskScheduler.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TaskScheduler.dir/src/main.cpp.i"
	/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohan/Developer/c++/task-scheduler/src/main.cpp > CMakeFiles/TaskScheduler.dir/src/main.cpp.i

CMakeFiles/TaskScheduler.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TaskScheduler.dir/src/main.cpp.s"
	/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohan/Developer/c++/task-scheduler/src/main.cpp -o CMakeFiles/TaskScheduler.dir/src/main.cpp.s

# Object files for target TaskScheduler
TaskScheduler_OBJECTS = \
"CMakeFiles/TaskScheduler.dir/src/main.cpp.o"

# External object files for target TaskScheduler
TaskScheduler_EXTERNAL_OBJECTS =

TaskScheduler: CMakeFiles/TaskScheduler.dir/src/main.cpp.o
TaskScheduler: CMakeFiles/TaskScheduler.dir/build.make
TaskScheduler: CMakeFiles/TaskScheduler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rohan/Developer/c++/task-scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TaskScheduler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TaskScheduler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TaskScheduler.dir/build: TaskScheduler
.PHONY : CMakeFiles/TaskScheduler.dir/build

CMakeFiles/TaskScheduler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TaskScheduler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TaskScheduler.dir/clean

CMakeFiles/TaskScheduler.dir/depend:
	cd /Users/rohan/Developer/c++/task-scheduler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rohan/Developer/c++/task-scheduler /Users/rohan/Developer/c++/task-scheduler /Users/rohan/Developer/c++/task-scheduler/build /Users/rohan/Developer/c++/task-scheduler/build /Users/rohan/Developer/c++/task-scheduler/build/CMakeFiles/TaskScheduler.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/TaskScheduler.dir/depend

