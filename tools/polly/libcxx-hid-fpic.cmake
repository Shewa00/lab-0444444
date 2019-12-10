# Copyright (c) 2013, Ruslan Baratov, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBCXX_CXX11_HID_FPIC)
  return()
else()
  set(POLLY_CLANG_LIBCXX_CXX11_HID_FPIC 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++11 support / hidden / FPIC"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("flags/hidden.cmake")
include("flags/fpic.cmake")
