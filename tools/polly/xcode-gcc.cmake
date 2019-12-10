# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_XCODE_GCC_CMAKE_)
  return()
else()
  set(POLLY_XCODE_GCC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(POLLY_XCODE_COMPILER "gcc")
polly_init(
    "Xcode / ${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
