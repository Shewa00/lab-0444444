# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_5_CMAKE_)
  return()
else()
  set(POLLY_GCC_5_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 5 / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-5.cmake")
include("flags/cxx11.cmake")
