# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CYGWIN_CMAKE_)
  return()
else()
  set(POLLY_CYGWIN_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "cygwin / gcc / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx11.cmake")

include("os/cygwin.cmake")
