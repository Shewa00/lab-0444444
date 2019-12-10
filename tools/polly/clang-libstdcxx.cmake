# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBSTDCXX_CMAKE)
  return()
else()
  set(POLLY_CLANG_LIBSTDCXX_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / GNU Standard C++ Library (libstdc++) / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libstdcxx.cmake")
include("flags/cxx11.cmake")

include("os/osx.cmake")
