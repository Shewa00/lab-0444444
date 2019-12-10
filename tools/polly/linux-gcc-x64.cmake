# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_LINUX_GCC_X64_)
  return()
else()
  set(POLLY_LINUX_GCC_X64_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Linux / gcc / x86_64 / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

set(CROSS_COMPILE_TOOLCHAIN_PREFIX "x86_64-pc-linux")

include(
    "compiler/gcc-cross-compile-simple-layout.cmake"
)
include("flags/cxx11.cmake")
include("flags/static.cmake")
