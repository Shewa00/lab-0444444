# Copyright (c) 2016-2019, Ruslan Baratov
# Copyright (c) 2019, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_GCC_7_CXX11_PIC_CMAKE_)
  return()
else()
  set(POLLY_GCC_7_CXX11_PIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 7 / c++11 support / PIC"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-7.cmake")
include("flags/cxx11.cmake")
include("flags/fpic.cmake")
