# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vessel/c++/slayer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vessel/c++/slayer

# Include any dependencies generated for this target.
include CMakeFiles/slayer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/slayer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/slayer.dir/flags.make

CMakeFiles/slayer.dir/log.cpp.o: CMakeFiles/slayer.dir/flags.make
CMakeFiles/slayer.dir/log.cpp.o: log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vessel/c++/slayer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/slayer.dir/log.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/slayer.dir/log.cpp.o -c /home/vessel/c++/slayer/log.cpp

CMakeFiles/slayer.dir/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slayer.dir/log.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vessel/c++/slayer/log.cpp > CMakeFiles/slayer.dir/log.cpp.i

CMakeFiles/slayer.dir/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slayer.dir/log.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vessel/c++/slayer/log.cpp -o CMakeFiles/slayer.dir/log.cpp.s

CMakeFiles/slayer.dir/util.cpp.o: CMakeFiles/slayer.dir/flags.make
CMakeFiles/slayer.dir/util.cpp.o: util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vessel/c++/slayer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/slayer.dir/util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/slayer.dir/util.cpp.o -c /home/vessel/c++/slayer/util.cpp

CMakeFiles/slayer.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slayer.dir/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vessel/c++/slayer/util.cpp > CMakeFiles/slayer.dir/util.cpp.i

CMakeFiles/slayer.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slayer.dir/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vessel/c++/slayer/util.cpp -o CMakeFiles/slayer.dir/util.cpp.s

CMakeFiles/slayer.dir/thread.cpp.o: CMakeFiles/slayer.dir/flags.make
CMakeFiles/slayer.dir/thread.cpp.o: thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vessel/c++/slayer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/slayer.dir/thread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/slayer.dir/thread.cpp.o -c /home/vessel/c++/slayer/thread.cpp

CMakeFiles/slayer.dir/thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slayer.dir/thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vessel/c++/slayer/thread.cpp > CMakeFiles/slayer.dir/thread.cpp.i

CMakeFiles/slayer.dir/thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slayer.dir/thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vessel/c++/slayer/thread.cpp -o CMakeFiles/slayer.dir/thread.cpp.s

# Object files for target slayer
slayer_OBJECTS = \
"CMakeFiles/slayer.dir/log.cpp.o" \
"CMakeFiles/slayer.dir/util.cpp.o" \
"CMakeFiles/slayer.dir/thread.cpp.o"

# External object files for target slayer
slayer_EXTERNAL_OBJECTS =

lib/libslayer.so: CMakeFiles/slayer.dir/log.cpp.o
lib/libslayer.so: CMakeFiles/slayer.dir/util.cpp.o
lib/libslayer.so: CMakeFiles/slayer.dir/thread.cpp.o
lib/libslayer.so: CMakeFiles/slayer.dir/build.make
lib/libslayer.so: CMakeFiles/slayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vessel/c++/slayer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library lib/libslayer.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/slayer.dir/build: lib/libslayer.so

.PHONY : CMakeFiles/slayer.dir/build

CMakeFiles/slayer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/slayer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/slayer.dir/clean

CMakeFiles/slayer.dir/depend:
	cd /home/vessel/c++/slayer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vessel/c++/slayer /home/vessel/c++/slayer /home/vessel/c++/slayer /home/vessel/c++/slayer /home/vessel/c++/slayer/CMakeFiles/slayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/slayer.dir/depend

