# Copyright (c) 2016, 2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_NINJA_VS_15_2017_WIN64_CMAKE_)
  return()
else()
  set(POLLY_NINJA_VS_15_2017_WIN64_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Ninja / Visual Studio 2017 / x64"
    "Ninja"
)

include("utilities/polly_common.cmake")

include("compiler/cl.cmake")
