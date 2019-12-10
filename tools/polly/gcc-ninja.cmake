# Copyright (c) 2013, 2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_NINJA_CMAKE_)
  return()
else()
  set(POLLY_GCC_NINJA_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support"
    "Ninja"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")

include("os/osx.cmake")
