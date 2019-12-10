# Copyright (c) 2014, 2018 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_SANITIZE_LEAK_CXX17_PIC_CMAKE_)
  return()
else()
  set(POLLY_SANITIZE_LEAK_CXX17_PIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Clang memory leaks sanitizer / c++17 support / PIC"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("flags/cxx17.cmake")
include("flags/fpic.cmake")
include("flags/sanitize_leak.cmake")
