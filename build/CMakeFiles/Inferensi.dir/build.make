# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build"

# Include any dependencies generated for this target.
include CMakeFiles/Inferensi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Inferensi.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Inferensi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Inferensi.dir/flags.make

CMakeFiles/Inferensi.dir/codegen:
.PHONY : CMakeFiles/Inferensi.dir/codegen

CMakeFiles/Inferensi.dir/src/main.c.o: CMakeFiles/Inferensi.dir/flags.make
CMakeFiles/Inferensi.dir/src/main.c.o: /Users/fadlur/Documents/S2\ UNDIP/Mata\ kuliah/Komputasi\ Cerdas/tugas\ \#2/inferensi/src/main.c
CMakeFiles/Inferensi.dir/src/main.c.o: CMakeFiles/Inferensi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Inferensi.dir/src/main.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Inferensi.dir/src/main.c.o -MF CMakeFiles/Inferensi.dir/src/main.c.o.d -o CMakeFiles/Inferensi.dir/src/main.c.o -c "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/src/main.c"

CMakeFiles/Inferensi.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Inferensi.dir/src/main.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/src/main.c" > CMakeFiles/Inferensi.dir/src/main.c.i

CMakeFiles/Inferensi.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Inferensi.dir/src/main.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/src/main.c" -o CMakeFiles/Inferensi.dir/src/main.c.s

# Object files for target Inferensi
Inferensi_OBJECTS = \
"CMakeFiles/Inferensi.dir/src/main.c.o"

# External object files for target Inferensi
Inferensi_EXTERNAL_OBJECTS =

Inferensi: CMakeFiles/Inferensi.dir/src/main.c.o
Inferensi: CMakeFiles/Inferensi.dir/build.make
Inferensi: CMakeFiles/Inferensi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Inferensi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Inferensi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Inferensi.dir/build: Inferensi
.PHONY : CMakeFiles/Inferensi.dir/build

CMakeFiles/Inferensi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Inferensi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Inferensi.dir/clean

CMakeFiles/Inferensi.dir/depend:
	cd "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi" "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi" "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build" "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build" "/Users/fadlur/Documents/S2 UNDIP/Mata kuliah/Komputasi Cerdas/tugas #2/inferensi/build/CMakeFiles/Inferensi.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Inferensi.dir/depend

