# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_8_CXX14_CMAKE)
  return()
else()
  set(POLLY_GCC_8_CXX14_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 8 / c++14 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-8.cmake")
include("flags/cxx14.cmake")
