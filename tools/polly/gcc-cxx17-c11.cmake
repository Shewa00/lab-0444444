# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_CXX17_C11_CMAKE_)
  return()
else()
  set(POLLY_GCC_CXX14_C17_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++17 support / C11"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx17.cmake")
include("flags/c11.cmake")

include("os/osx.cmake")

