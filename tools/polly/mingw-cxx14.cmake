# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_MINGW_CXX14_CMAKE_)
  return()
else()
  set(POLLY_MINGW_CXX14_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "mingw / gcc / c++14 support"
    "MinGW Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx14.cmake")
