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

# Utility rule file for openpose_lib.

# Include the progress variables for this target.
include CMakeFiles/openpose_lib.dir/progress.make

CMakeFiles/openpose_lib: CMakeFiles/openpose_lib-complete


CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-install
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-mkdir
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-download
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-update
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-patch
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-configure
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-build
CMakeFiles/openpose_lib-complete: caffe/src/openpose_lib-stamp/openpose_lib-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'openpose_lib'"
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/CMakeFiles
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/CMakeFiles/openpose_lib-complete
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-done

caffe/src/openpose_lib-stamp/openpose_lib-install: caffe/src/openpose_lib-stamp/openpose_lib-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'openpose_lib'"
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && $(MAKE) install
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-install

caffe/src/openpose_lib-stamp/openpose_lib-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'openpose_lib'"
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/3rdparty/caffe
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe/tmp
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe/src
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E make_directory /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-mkdir

caffe/src/openpose_lib-stamp/openpose_lib-download: caffe/src/openpose_lib-stamp/openpose_lib-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'openpose_lib'"
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E echo_append
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-download

caffe/src/openpose_lib-stamp/openpose_lib-update: caffe/src/openpose_lib-stamp/openpose_lib-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'openpose_lib'"
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E echo_append
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-update

caffe/src/openpose_lib-stamp/openpose_lib-patch: caffe/src/openpose_lib-stamp/openpose_lib-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'openpose_lib'"
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E echo_append
	/home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-patch

caffe/src/openpose_lib-stamp/openpose_lib-configure: caffe/tmp/openpose_lib-cfgcmd.txt
caffe/src/openpose_lib-stamp/openpose_lib-configure: caffe/src/openpose_lib-stamp/openpose_lib-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'openpose_lib'"
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/home/ubuntu/Robert/openpose/build/caffe -DCMAKE_TOOLCHAIN_FILE= -DUSE_CUDNN=ON -DCUDA_ARCH_NAME=Auto -DCUDA_ARCH_BIN= -DCUDA_ARCH_PTX= -DCPU_ONLY=OFF -DCMAKE_BUILD_TYPE=Release -DBUILD_docs=OFF -DBUILD_python=OFF -DBUILD_python_layer=OFF -DUSE_LEVELDB=OFF -DUSE_LMDB=OFF -DUSE_OPENCV=OFF "-GUnix Makefiles" /home/ubuntu/Robert/openpose/3rdparty/caffe
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-configure

caffe/src/openpose_lib-stamp/openpose_lib-build: caffe/src/openpose_lib-stamp/openpose_lib-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'openpose_lib'"
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && $(MAKE)
	cd /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-build && /home/ubuntu/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E touch /home/ubuntu/Robert/openpose/build/caffe/src/openpose_lib-stamp/openpose_lib-build

openpose_lib: CMakeFiles/openpose_lib
openpose_lib: CMakeFiles/openpose_lib-complete
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-install
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-mkdir
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-download
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-update
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-patch
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-configure
openpose_lib: caffe/src/openpose_lib-stamp/openpose_lib-build
openpose_lib: CMakeFiles/openpose_lib.dir/build.make

.PHONY : openpose_lib

# Rule to build all files generated by this target.
CMakeFiles/openpose_lib.dir/build: openpose_lib

.PHONY : CMakeFiles/openpose_lib.dir/build

CMakeFiles/openpose_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/openpose_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/openpose_lib.dir/clean

CMakeFiles/openpose_lib.dir/depend:
	cd /home/ubuntu/Robert/openpose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Robert/openpose /home/ubuntu/Robert/openpose /home/ubuntu/Robert/openpose/build /home/ubuntu/Robert/openpose/build /home/ubuntu/Robert/openpose/build/CMakeFiles/openpose_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/openpose_lib.dir/depend
