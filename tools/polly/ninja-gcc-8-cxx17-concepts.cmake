# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_GCC_8_CXX17_CONCEPTS_CMAKE_)
  return()
else()
  set(POLLY_GCC_8_CXX17_CONCEPTS_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 8 / c++17 support / Concepts"
    "Ninja"
)

include("utilities/polly_common.cmake")

include("compiler/gcc-8.cmake")
include("flags/cxx17.cmake")
include("flags/fconcepts.cmake")
