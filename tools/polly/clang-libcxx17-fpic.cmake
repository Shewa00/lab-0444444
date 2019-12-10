# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBCXX17_FPIC_CMAKE)
  return()
else()
  set(POLLY_CLANG_LIBCXX17_FPIC_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++17 support / Position-Independent Code"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx17.cmake")
include("flags/fpic.cmake")

include("os/osx.cmake")
