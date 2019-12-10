# Copyright (c) 2014-2016, Ruslan Baratov
# Copyright (c) 2016, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_XCODE_HID_SECTIONS_CMAKE_)
  return()
else()
  set(POLLY_XCODE_HID_SECTIONS_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode / ${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / c++11 support / hidden / data-sections / function-sections"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
