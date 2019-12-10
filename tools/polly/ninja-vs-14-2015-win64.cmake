# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_NINJA_VS_14_2015_WIN64_CMAKE_)
  return()
else()
  set(POLLY_NINJA_VS_14_2015_WIN64_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Ninja / Visual Studio 2015 / x64"
    "Ninja"
)

include("utilities/polly_common.cmake")

include("compiler/cl.cmake")
