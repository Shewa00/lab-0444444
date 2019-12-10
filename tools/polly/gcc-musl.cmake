# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_MUSL_CMAKE_)
  return()
else()
  set(POLLY_GCC_MUSL_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support / musl / static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

set(CROSS_COMPILE_TOOLCHAIN_PATH "$ENV{GCC_MUSL_ROOT}")
string(COMPARE EQUAL "${CROSS_COMPILE_TOOLCHAIN_PATH}" "" _is_empty)
if(_is_empty)
  polly_fatal_error("Environment variable GCC_MUSL_ROOT is not set")
endif()

set(CROSS_COMPILE_TOOLCHAIN_PREFIX "x86_64-linux-musl")

set(POLLY_SKIP_SYSROOT TRUE)
set(CROSS_COMPILE_SYSROOT "dummy/path")

include("compiler/gcc-cross-compile.cmake")

include("flags/cxx11.cmake")
include("flags/static.cmake")
