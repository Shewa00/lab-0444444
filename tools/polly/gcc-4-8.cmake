# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC48_CMAKE)
  return()
else()
  set(POLLY_GCC48_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 4.8 / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc48.cmake")
include("flags/cxx11.cmake")
