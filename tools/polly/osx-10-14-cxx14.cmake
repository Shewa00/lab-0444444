# Copyright (c) 2016, 2018 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_OSX_10_14_CXX14_CMAKE_)
  return()
else()
  set(POLLY_OSX_10_14_CXX14_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(OSX_SDK_VERSION "10.14")
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode (OS X ${OSX_SDK_VERSION}) / \
${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++14 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.14" CACHE STRING "OS X Deployment target" FORCE)

include("library/std/libcxx.cmake")
include("flags/cxx14.cmake")
include("os/osx.cmake")
