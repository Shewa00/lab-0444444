# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_9_2008_CMAKE_)
  return()
else()
  set(POLLY_VS_9_2008_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 9 2008"
    "Visual Studio 9 2008"
)

include("utilities/polly_common.cmake")
