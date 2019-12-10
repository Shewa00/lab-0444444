# Copyright (c) 2016-2018, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_CLANG_CXX17_CMAKE_)
  return()
else()
  set(POLLY_CLANG_CXX17_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / c++17 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("flags/cxx17.cmake")
