# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_CLANG_5_CXX14_CMAKE_)
  return()
else()
  set(POLLY_CLANG_5_CXX14_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang 5 / c++14 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang-5.cmake")
include("flags/cxx14.cmake")
