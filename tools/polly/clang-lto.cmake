# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LTO_CMAKE_)
  return()
else()
  set(POLLY_CLANG_LTO_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++11 support / LTO"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("flags/lto.cmake")
