# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_MSYS_CXX14_CMAKE_)
  return()
else()
  set(POLLY_MSYS_CXX14_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "MSYS / gcc / c++14 support"
    "MSYS Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx14.cmake")
