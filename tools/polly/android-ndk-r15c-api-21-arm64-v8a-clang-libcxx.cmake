# Copyright (c) 2015, Ruslan Baratov
# Copyright (c) 2017, Robert Nitsch
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R15C_API_21_ARM64_V8A_CLANG_LIBCXX_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R15C_API_21_ARM64_V8A_CLANG_LIBCXX_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r15c")
set(CMAKE_SYSTEM_VERSION "21")
set(CMAKE_ANDROID_ARCH_ABI "arm64-v8a")
set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang")
set(CMAKE_ANDROID_STL_TYPE "c++_static") # LLVM libc++ static

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \
Clang / c++11 support / libc++ static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx11.cmake") # before toolchain!

include("os/android.cmake")
