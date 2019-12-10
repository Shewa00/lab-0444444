# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_OSX_10_13_DEP_10_12_CXX17_CMAKE_)
  return()
else()
  set(POLLY_OSX_10_13_DEP_10_12_CXX17_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(OSX_SDK_VERSION "10.13")
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode (OS X ${OSX_SDK_VERSION} | Deployment 10.12) / \
${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++17 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.12" CACHE STRING "OS X Deployment target" FORCE)

include("library/std/libcxx.cmake")
include("flags/cxx17.cmake")
include("os/osx.cmake")
