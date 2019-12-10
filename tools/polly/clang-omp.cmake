# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_OMP_CMAKE_)
  return()
else()
  set(POLLY_CLANG_OMP_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / OpenMP / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang-omp.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")

include("os/osx.cmake")
