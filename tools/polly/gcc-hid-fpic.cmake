# Copyright (c) 2015, Ruslan Baratov
# Copyright (c) 2016, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_GCC_HID_FPIC_CMAKE_)
  return()
else()
  set(POLLY_GCC_HID_FPIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support / hidden / FPIC"
    "Unix Makefiles"
    )

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")
include("flags/hidden.cmake")
include("flags/fpic.cmake")

