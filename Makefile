# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /mnt/d/Users/Aidan/source/repos/PHYS4D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/Users/Aidan/source/repos/PHYS4D

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/Users/Aidan/source/repos/PHYS4D/CMakeFiles /mnt/d/Users/Aidan/source/repos/PHYS4D//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/Users/Aidan/source/repos/PHYS4D/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named glad

# Build rule for target.
glad: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 glad
.PHONY : glad

# fast build rule for target.
glad/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/build
.PHONY : glad/fast

#=============================================================================
# Target rules for targets named MyOpenGLProject

# Build rule for target.
MyOpenGLProject: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 MyOpenGLProject
.PHONY : MyOpenGLProject

# fast build rule for target.
MyOpenGLProject/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/build
.PHONY : MyOpenGLProject/fast

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/main.cpp.s
.PHONY : main.cpp.s

shader.o: shader.cpp.o

.PHONY : shader.o

# target to build an object file
shader.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/shader.cpp.o
.PHONY : shader.cpp.o

shader.i: shader.cpp.i

.PHONY : shader.i

# target to preprocess a source file
shader.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/shader.cpp.i
.PHONY : shader.cpp.i

shader.s: shader.cpp.s

.PHONY : shader.s

# target to generate assembly for a file
shader.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/shader.cpp.s
.PHONY : shader.cpp.s

src/glad.o: src/glad.c.o

.PHONY : src/glad.o

# target to build an object file
src/glad.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/src/glad.c.o
.PHONY : src/glad.c.o

src/glad.i: src/glad.c.i

.PHONY : src/glad.i

# target to preprocess a source file
src/glad.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/src/glad.c.i
.PHONY : src/glad.c.i

src/glad.s: src/glad.c.s

.PHONY : src/glad.s

# target to generate assembly for a file
src/glad.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyOpenGLProject.dir/build.make CMakeFiles/MyOpenGLProject.dir/src/glad.c.s
.PHONY : src/glad.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... MyOpenGLProject"
	@echo "... glad"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... shader.o"
	@echo "... shader.i"
	@echo "... shader.s"
	@echo "... src/glad.o"
	@echo "... src/glad.i"
	@echo "... src/glad.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

