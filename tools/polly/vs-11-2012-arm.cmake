# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_11_2012_ARM_CMAKE_)
  return()
else()
  set(POLLY_VS_11_2012_ARM_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 11 2012 ARM"
    "Visual Studio 11 2012 ARM"
)

include("utilities/polly_common.cmake")
