# Copyright (c) 2014, 2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_NMAKE_VS_15_2017_WIN64_CXX17_NONPERMISSIVE_CMAKE_)
  return()
else()
  set(POLLY_NMAKE_VS_15_2017_WIN64_CXX17_NONPERMISSIVE_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "NMake / Visual Studio 2017 / x64 / C++17"
    "NMake Makefiles"
)

include("utilities/polly_common.cmake")
include("flags/vs-cxx17.cmake")
include("flags/vs-nonpermissive.cmake")
