# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_OSX_10_10_DEP_10_9_MAKE_CMAKE_)
  return()
else()
  set(POLLY_OSX_10_10_DEP_10_9_MAKE_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(OSX_SDK_VERSION "10.10")
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Makefile (OS X ${OSX_SDK_VERSION}) / \
${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.9" CACHE STRING "OS X Deployment target" FORCE)

include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("os/osx.cmake")
