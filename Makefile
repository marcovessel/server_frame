# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/cmake-gui -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vessel/c++/slayer/CMakeFiles /home/vessel/c++/slayer/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vessel/c++/slayer/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test

# Build rule for target.
test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test
.PHONY : test

# fast build rule for target.
test/fast:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/build
.PHONY : test/fast

#=============================================================================
# Target rules for targets named slayer

# Build rule for target.
slayer: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 slayer
.PHONY : slayer

# fast build rule for target.
slayer/fast:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/build
.PHONY : slayer/fast

log.o: log.cpp.o

.PHONY : log.o

# target to build an object file
log.cpp.o:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/log.cpp.o
.PHONY : log.cpp.o

log.i: log.cpp.i

.PHONY : log.i

# target to preprocess a source file
log.cpp.i:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/log.cpp.i
.PHONY : log.cpp.i

log.s: log.cpp.s

.PHONY : log.s

# target to generate assembly for a file
log.cpp.s:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/log.cpp.s
.PHONY : log.cpp.s

tests/test.o: tests/test.cc.o

.PHONY : tests/test.o

# target to build an object file
tests/test.cc.o:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.o
.PHONY : tests/test.cc.o

tests/test.i: tests/test.cc.i

.PHONY : tests/test.i

# target to preprocess a source file
tests/test.cc.i:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.i
.PHONY : tests/test.cc.i

tests/test.s: tests/test.cc.s

.PHONY : tests/test.s

# target to generate assembly for a file
tests/test.cc.s:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.s
.PHONY : tests/test.cc.s

thread.o: thread.cpp.o

.PHONY : thread.o

# target to build an object file
thread.cpp.o:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/thread.cpp.o
.PHONY : thread.cpp.o

thread.i: thread.cpp.i

.PHONY : thread.i

# target to preprocess a source file
thread.cpp.i:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/thread.cpp.i
.PHONY : thread.cpp.i

thread.s: thread.cpp.s

.PHONY : thread.s

# target to generate assembly for a file
thread.cpp.s:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/thread.cpp.s
.PHONY : thread.cpp.s

util.o: util.cpp.o

.PHONY : util.o

# target to build an object file
util.cpp.o:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/util.cpp.o
.PHONY : util.cpp.o

util.i: util.cpp.i

.PHONY : util.i

# target to preprocess a source file
util.cpp.i:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/util.cpp.i
.PHONY : util.cpp.i

util.s: util.cpp.s

.PHONY : util.s

# target to generate assembly for a file
util.cpp.s:
	$(MAKE) -f CMakeFiles/slayer.dir/build.make CMakeFiles/slayer.dir/util.cpp.s
.PHONY : util.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test"
	@echo "... slayer"
	@echo "... log.o"
	@echo "... log.i"
	@echo "... log.s"
	@echo "... tests/test.o"
	@echo "... tests/test.i"
	@echo "... tests/test.s"
	@echo "... thread.o"
	@echo "... thread.i"
	@echo "... thread.s"
	@echo "... util.o"
	@echo "... util.i"
	@echo "... util.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

