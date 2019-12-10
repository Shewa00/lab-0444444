# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_MINGW_CMAKE_)
  return()
else()
  set(POLLY_MINGW_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "mingw / gcc / c++11 support / C11"
    "MinGW Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")
include("flags/c11.cmake")
