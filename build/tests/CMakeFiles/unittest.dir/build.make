# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/acking-liu/CLionProjects/ejson4cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/acking-liu/CLionProjects/ejson4cpp/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/unittest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/unittest.dir/flags.make

tests/CMakeFiles/unittest.dir/base64_test.cc.o: tests/CMakeFiles/unittest.dir/flags.make
tests/CMakeFiles/unittest.dir/base64_test.cc.o: /Users/acking-liu/CLionProjects/ejson4cpp/tests/base64_test.cc
tests/CMakeFiles/unittest.dir/base64_test.cc.o: tests/CMakeFiles/unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/acking-liu/CLionProjects/ejson4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/unittest.dir/base64_test.cc.o"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/unittest.dir/base64_test.cc.o -MF CMakeFiles/unittest.dir/base64_test.cc.o.d -o CMakeFiles/unittest.dir/base64_test.cc.o -c /Users/acking-liu/CLionProjects/ejson4cpp/tests/base64_test.cc

tests/CMakeFiles/unittest.dir/base64_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/base64_test.cc.i"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/acking-liu/CLionProjects/ejson4cpp/tests/base64_test.cc > CMakeFiles/unittest.dir/base64_test.cc.i

tests/CMakeFiles/unittest.dir/base64_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/base64_test.cc.s"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/acking-liu/CLionProjects/ejson4cpp/tests/base64_test.cc -o CMakeFiles/unittest.dir/base64_test.cc.s

tests/CMakeFiles/unittest.dir/parser_test.cc.o: tests/CMakeFiles/unittest.dir/flags.make
tests/CMakeFiles/unittest.dir/parser_test.cc.o: /Users/acking-liu/CLionProjects/ejson4cpp/tests/parser_test.cc
tests/CMakeFiles/unittest.dir/parser_test.cc.o: tests/CMakeFiles/unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/acking-liu/CLionProjects/ejson4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/unittest.dir/parser_test.cc.o"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/unittest.dir/parser_test.cc.o -MF CMakeFiles/unittest.dir/parser_test.cc.o.d -o CMakeFiles/unittest.dir/parser_test.cc.o -c /Users/acking-liu/CLionProjects/ejson4cpp/tests/parser_test.cc

tests/CMakeFiles/unittest.dir/parser_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/parser_test.cc.i"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/acking-liu/CLionProjects/ejson4cpp/tests/parser_test.cc > CMakeFiles/unittest.dir/parser_test.cc.i

tests/CMakeFiles/unittest.dir/parser_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/parser_test.cc.s"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/acking-liu/CLionProjects/ejson4cpp/tests/parser_test.cc -o CMakeFiles/unittest.dir/parser_test.cc.s

# Object files for target unittest
unittest_OBJECTS = \
"CMakeFiles/unittest.dir/base64_test.cc.o" \
"CMakeFiles/unittest.dir/parser_test.cc.o"

# External object files for target unittest
unittest_EXTERNAL_OBJECTS =

tests/unittest: tests/CMakeFiles/unittest.dir/base64_test.cc.o
tests/unittest: tests/CMakeFiles/unittest.dir/parser_test.cc.o
tests/unittest: tests/CMakeFiles/unittest.dir/build.make
tests/unittest: _deps/doctest-build/libdoctest_with_main.a
tests/unittest: libejson.a
tests/unittest: _deps/nanobench-build/libnanobench.a
tests/unittest: tests/CMakeFiles/unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/acking-liu/CLionProjects/ejson4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable unittest"
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/unittest.dir/build: tests/unittest
.PHONY : tests/CMakeFiles/unittest.dir/build

tests/CMakeFiles/unittest.dir/clean:
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/unittest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/unittest.dir/clean

tests/CMakeFiles/unittest.dir/depend:
	cd /Users/acking-liu/CLionProjects/ejson4cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/acking-liu/CLionProjects/ejson4cpp /Users/acking-liu/CLionProjects/ejson4cpp/tests /Users/acking-liu/CLionProjects/ejson4cpp/build /Users/acking-liu/CLionProjects/ejson4cpp/build/tests /Users/acking-liu/CLionProjects/ejson4cpp/build/tests/CMakeFiles/unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/unittest.dir/depend

