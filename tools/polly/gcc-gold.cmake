# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_GOLD_CMAKE_)
  return()
else()
  set(POLLY_GCC_GOLD_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support / gold"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")
include("flags/gold.cmake")
