# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_OPENBSD_CMAKE)
  return()
else()
  set(POLLY_CLANG_OPENBSD_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "openbsd / egcc / GNU Standard C++ Library (libstdc++) / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/egcc.cmake")
#include("${CMAKE_CURRENT_LIST_DIR}/library/std/libstdcxx.cmake")
include("flags/cxx11.cmake")
include("flags/fpic.cmake")
include("flags/static-std.cmake")

