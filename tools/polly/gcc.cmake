# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_CMAKE)
  return()
else()
  set(POLLY_GCC_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")

include("os/osx.cmake")
