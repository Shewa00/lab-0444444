# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC48_C11_CMAKE_)
  return()
else()
  set(POLLY_GCC48_C11_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 4.8 / c++11 support / C11"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc48.cmake")
include("flags/cxx11.cmake")
include("flags/c11.cmake")
