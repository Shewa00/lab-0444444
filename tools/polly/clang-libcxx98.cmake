# Copyright (c) 2013, 2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBCXX98_CMAKE)
  return()
else()
  set(POLLY_CLANG_LIBCXX98_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++98 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx98.cmake")

include("os/osx.cmake")
