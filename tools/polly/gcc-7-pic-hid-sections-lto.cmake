# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_7_PIC_HID_SECTIONS_LTO_CMAKE_)
  return()
else()
  set(POLLY_GCC_7_PIC_HID_SECTIONS_LTO_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 7 / PIC / c++11 support / hidden / function-sections / data-sections / LTO"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-7.cmake")
include("flags/cxx11.cmake")
include("flags/fpic.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
include("flags/lto.cmake")
