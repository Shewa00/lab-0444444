# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_GCC_7_CXX14_PIC_CMAKE_)
  return()
else()
  set(POLLY_GCC_7_CXX14_PIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 7 / c++14 support / PIC"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-7.cmake")
include("flags/cxx14.cmake")
include("flags/fpic.cmake")
