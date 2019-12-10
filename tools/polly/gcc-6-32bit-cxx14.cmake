# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_32BIT_CMAKE)
  return()
else()
  set(POLLY_GCC_32BIT_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 6 / c++14 support / 32 bit"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-6.cmake")
include("flags/cxx14.cmake")
include("flags/32bit.cmake")
