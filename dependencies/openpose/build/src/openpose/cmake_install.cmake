# Install script for directory: /home/ubuntu/Robert/openpose/src/openpose

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/Robert/openpose/build/src/openpose/libopenpose.so.1.7.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0"
         OLD_RPATH "/usr/local/lib:/home/ubuntu/Robert/openpose/build/caffe/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so.1.7.0")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/Robert/openpose/build/src/openpose/libopenpose.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so"
         OLD_RPATH "/usr/local/lib:/home/ubuntu/Robert/openpose/build/caffe/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenpose.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/Robert/openpose/build/src/openpose/3d/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/calibration/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/core/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/face/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/filestream/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/gpu/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/gui/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/hand/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/net/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/pose/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/producer/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/thread/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/tracking/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/unity/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/utilities/cmake_install.cmake")
  include("/home/ubuntu/Robert/openpose/build/src/openpose/wrapper/cmake_install.cmake")

endif()

