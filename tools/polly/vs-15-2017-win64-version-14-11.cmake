# Copyright (c) 2015-2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_15_2017_WIN64_VERSION_14_11_CMAKE_)
  return()
else()
  set(POLLY_VS_15_2017_WIN64_VERSION_14_11_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 15 2017 Win64 / version=14.11"
    "Visual Studio 15 2017 Win64"
)

include("utilities/polly_common.cmake")
include("flags/vs-version-14-11.cmake")
