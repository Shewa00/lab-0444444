# Copyright (c) 2015-2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_15_2017_WIN64_STORE_10_ZW_CMAKE_)
  return()
else()
  set(POLLY_VS_15_2017_WIN64_STORE_10_ZW_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(CMAKE_SYSTEM_NAME WindowsStore)
set(CMAKE_SYSTEM_VERSION 10.0)

polly_init(
    "Visual Studio 15 2017 Win64 / ${CMAKE_SYSTEM_NAME} ${CMAKE_SYSTEM_VERSION} / ZW"
    "Visual Studio 15 2017 Win64"
)

include("utilities/polly_common.cmake")
include("flags/vs-zw.cmake")
