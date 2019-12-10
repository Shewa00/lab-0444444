# Copyright (c) 2013, Ruslan Baratov
# Copyright (c) 2016, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_CLANG_FPIC_HID_SECTIONS_)
  return()
else()
  set(POLLY_CLANG_FPIC_HID_SECTIONS_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / PIC / \
c++11 support / hidden / data-sections / function-sections"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("flags/cxx11.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
include("flags/fpic.cmake")
