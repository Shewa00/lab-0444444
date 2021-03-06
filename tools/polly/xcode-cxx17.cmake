# Copyright (c) 2014-2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_XCODE_CXX17_CMAKE_)
  return()
else()
  set(POLLY_XCODE_CXX17_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode / ${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++17 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx17.cmake")
