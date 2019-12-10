# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_10_2010_CMAKE_)
  return()
else()
  set(POLLY_VS_10_2010_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 10 2010"
    "Visual Studio 10 2010"
)

include("utilities/polly_common.cmake")
