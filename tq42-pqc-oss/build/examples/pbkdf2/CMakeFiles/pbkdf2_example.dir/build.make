# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/neon/Music/tq42-pqc-oss

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neon/Music/tq42-pqc-oss/build

# Include any dependencies generated for this target.
include examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/flags.make

examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o: examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/flags.make
examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o: /home/neon/Music/tq42-pqc-oss/examples/pbkdf2/pbkdf2_example.cpp
examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o: examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/neon/Music/tq42-pqc-oss/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o"
	cd /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o -MF CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o.d -o CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o -c /home/neon/Music/tq42-pqc-oss/examples/pbkdf2/pbkdf2_example.cpp

examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.i"
	cd /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/neon/Music/tq42-pqc-oss/examples/pbkdf2/pbkdf2_example.cpp > CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.i

examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.s"
	cd /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/neon/Music/tq42-pqc-oss/examples/pbkdf2/pbkdf2_example.cpp -o CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.s

# Object files for target pbkdf2_example
pbkdf2_example_OBJECTS = \
"CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o"

# External object files for target pbkdf2_example
pbkdf2_example_EXTERNAL_OBJECTS =

examples/pbkdf2/pbkdf2_example: examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/pbkdf2_example.cpp.o
examples/pbkdf2/pbkdf2_example: examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/build.make
examples/pbkdf2/pbkdf2_example: src/libpqc.a
examples/pbkdf2/pbkdf2_example: examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/neon/Music/tq42-pqc-oss/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pbkdf2_example"
	cd /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pbkdf2_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/build: examples/pbkdf2/pbkdf2_example
.PHONY : examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/build

examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/clean:
	cd /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 && $(CMAKE_COMMAND) -P CMakeFiles/pbkdf2_example.dir/cmake_clean.cmake
.PHONY : examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/clean

examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/depend:
	cd /home/neon/Music/tq42-pqc-oss/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neon/Music/tq42-pqc-oss /home/neon/Music/tq42-pqc-oss/examples/pbkdf2 /home/neon/Music/tq42-pqc-oss/build /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2 /home/neon/Music/tq42-pqc-oss/build/examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/pbkdf2/CMakeFiles/pbkdf2_example.dir/depend

