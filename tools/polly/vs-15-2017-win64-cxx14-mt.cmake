# Copyright (c) 2014-2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_15_2017_WIN64_CXX14_MT_CMAKE_)
  return()
else()
  set(POLLY_VS_15_2017_WIN64_CXX14_MT_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 15 2017 Win64 / C++14 / MT (static)"
    "Visual Studio 15 2017 Win64"
)

include("utilities/polly_common.cmake")

include("flags/vs-cxx14.cmake")
include("flags/vs-mt.cmake")
