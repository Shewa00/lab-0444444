# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_CXX98_CMAKE)
  return()
else()
  set(POLLY_GCC_CXX98_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx98.cmake")
