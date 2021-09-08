# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Robert/openpose

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Robert/openpose/build

# Include any dependencies generated for this target.
include src/openpose/calibration/CMakeFiles/openpose_calibration.dir/depend.make

# Include the progress variables for this target.
include src/openpose/calibration/CMakeFiles/openpose_calibration.dir/progress.make

# Include the compile flags for this target's objects.
include src/openpose/calibration/CMakeFiles/openpose_calibration.dir/flags.make

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/flags.make
src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o: ../src/openpose/calibration/cameraParameterEstimation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o -c /home/ubuntu/Robert/openpose/src/openpose/calibration/cameraParameterEstimation.cpp

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.i"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Robert/openpose/src/openpose/calibration/cameraParameterEstimation.cpp > CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.i

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.s"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Robert/openpose/src/openpose/calibration/cameraParameterEstimation.cpp -o CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.s

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/flags.make
src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o: ../src/openpose/calibration/gridPatternFunctions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o -c /home/ubuntu/Robert/openpose/src/openpose/calibration/gridPatternFunctions.cpp

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.i"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Robert/openpose/src/openpose/calibration/gridPatternFunctions.cpp > CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.i

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.s"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Robert/openpose/src/openpose/calibration/gridPatternFunctions.cpp -o CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.s

# Object files for target openpose_calibration
openpose_calibration_OBJECTS = \
"CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o" \
"CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o"

# External object files for target openpose_calibration
openpose_calibration_EXTERNAL_OBJECTS =

src/openpose/calibration/libopenpose_calibration.so: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/cameraParameterEstimation.cpp.o
src/openpose/calibration/libopenpose_calibration.so: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/gridPatternFunctions.cpp.o
src/openpose/calibration/libopenpose_calibration.so: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/build.make
src/openpose/calibration/libopenpose_calibration.so: /usr/local/cuda/lib64/libcudart_static.a
src/openpose/calibration/libopenpose_calibration.so: /usr/lib/x86_64-linux-gnu/librt.so
src/openpose/calibration/libopenpose_calibration.so: src/openpose/core/libopenpose_core.so
src/openpose/calibration/libopenpose_calibration.so: /usr/local/cuda/lib64/libcudart_static.a
src/openpose/calibration/libopenpose_calibration.so: /usr/lib/x86_64-linux-gnu/librt.so
src/openpose/calibration/libopenpose_calibration.so: src/openpose/calibration/CMakeFiles/openpose_calibration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libopenpose_calibration.so"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openpose_calibration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/openpose/calibration/CMakeFiles/openpose_calibration.dir/build: src/openpose/calibration/libopenpose_calibration.so

.PHONY : src/openpose/calibration/CMakeFiles/openpose_calibration.dir/build

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/clean:
	cd /home/ubuntu/Robert/openpose/build/src/openpose/calibration && $(CMAKE_COMMAND) -P CMakeFiles/openpose_calibration.dir/cmake_clean.cmake
.PHONY : src/openpose/calibration/CMakeFiles/openpose_calibration.dir/clean

src/openpose/calibration/CMakeFiles/openpose_calibration.dir/depend:
	cd /home/ubuntu/Robert/openpose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Robert/openpose /home/ubuntu/Robert/openpose/src/openpose/calibration /home/ubuntu/Robert/openpose/build /home/ubuntu/Robert/openpose/build/src/openpose/calibration /home/ubuntu/Robert/openpose/build/src/openpose/calibration/CMakeFiles/openpose_calibration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/openpose/calibration/CMakeFiles/openpose_calibration.dir/depend

