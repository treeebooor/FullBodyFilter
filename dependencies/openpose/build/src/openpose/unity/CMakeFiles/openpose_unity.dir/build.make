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
include src/openpose/unity/CMakeFiles/openpose_unity.dir/depend.make

# Include the progress variables for this target.
include src/openpose/unity/CMakeFiles/openpose_unity.dir/progress.make

# Include the compile flags for this target's objects.
include src/openpose/unity/CMakeFiles/openpose_unity.dir/flags.make

src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.o: src/openpose/unity/CMakeFiles/openpose_unity.dir/flags.make
src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.o: ../src/openpose/unity/unityBinding.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.o"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/unity && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openpose_unity.dir/unityBinding.cpp.o -c /home/ubuntu/Robert/openpose/src/openpose/unity/unityBinding.cpp

src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_unity.dir/unityBinding.cpp.i"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/unity && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Robert/openpose/src/openpose/unity/unityBinding.cpp > CMakeFiles/openpose_unity.dir/unityBinding.cpp.i

src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_unity.dir/unityBinding.cpp.s"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/unity && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Robert/openpose/src/openpose/unity/unityBinding.cpp -o CMakeFiles/openpose_unity.dir/unityBinding.cpp.s

# Object files for target openpose_unity
openpose_unity_OBJECTS = \
"CMakeFiles/openpose_unity.dir/unityBinding.cpp.o"

# External object files for target openpose_unity
openpose_unity_EXTERNAL_OBJECTS =

src/openpose/unity/libopenpose_unity.so: src/openpose/unity/CMakeFiles/openpose_unity.dir/unityBinding.cpp.o
src/openpose/unity/libopenpose_unity.so: src/openpose/unity/CMakeFiles/openpose_unity.dir/build.make
src/openpose/unity/libopenpose_unity.so: src/openpose/pose/libopenpose_pose.so
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_gapi.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_stitching.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_aruco.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_bgsegm.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_bioinspired.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_ccalib.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_dnn_superres.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_dpm.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_face.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_freetype.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_fuzzy.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_hdf.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_hfs.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_img_hash.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_intensity_transform.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_line_descriptor.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_mcc.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_quality.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_rapid.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_reg.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_rgbd.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_saliency.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_stereo.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_structured_light.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_superres.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_surface_matching.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_tracking.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_videostab.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_xfeatures2d.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_xobjdetect.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_xphoto.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/lib/x86_64-linux-gnu/libglog.so
src/openpose/unity/libopenpose_unity.so: caffe/lib/libcaffe.so
src/openpose/unity/libopenpose_unity.so: src/openpose/core/libopenpose_core.so
src/openpose/unity/libopenpose_unity.so: /usr/local/cuda/lib64/libcudart_static.a
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_shape.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_highgui.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_datasets.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_plot.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_text.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_ml.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_optflow.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_ximgproc.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_video.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_dnn.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_videoio.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_imgcodecs.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_objdetect.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_calib3d.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_features2d.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_flann.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_photo.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_imgproc.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/local/lib/libopencv_core.so.4.5.1
src/openpose/unity/libopenpose_unity.so: /usr/lib/x86_64-linux-gnu/librt.so
src/openpose/unity/libopenpose_unity.so: src/openpose/unity/CMakeFiles/openpose_unity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Robert/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libopenpose_unity.so"
	cd /home/ubuntu/Robert/openpose/build/src/openpose/unity && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openpose_unity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/openpose/unity/CMakeFiles/openpose_unity.dir/build: src/openpose/unity/libopenpose_unity.so

.PHONY : src/openpose/unity/CMakeFiles/openpose_unity.dir/build

src/openpose/unity/CMakeFiles/openpose_unity.dir/clean:
	cd /home/ubuntu/Robert/openpose/build/src/openpose/unity && $(CMAKE_COMMAND) -P CMakeFiles/openpose_unity.dir/cmake_clean.cmake
.PHONY : src/openpose/unity/CMakeFiles/openpose_unity.dir/clean

src/openpose/unity/CMakeFiles/openpose_unity.dir/depend:
	cd /home/ubuntu/Robert/openpose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Robert/openpose /home/ubuntu/Robert/openpose/src/openpose/unity /home/ubuntu/Robert/openpose/build /home/ubuntu/Robert/openpose/build/src/openpose/unity /home/ubuntu/Robert/openpose/build/src/openpose/unity/CMakeFiles/openpose_unity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/openpose/unity/CMakeFiles/openpose_unity.dir/depend
