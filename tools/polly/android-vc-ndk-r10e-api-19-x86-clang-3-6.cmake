# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_ANDROID_VC_NDK_R10E_API_19_X86_CLANG_3_6_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_VC_NDK_R10E_API_19_X86_CLANG_3_6_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r10e") # default
set(ANDROID_NATIVE_API_LEVEL "19")
set(ANDROID_ABI "x86")
set(CMAKE_VC_MDD_ANDROID_PLATFORM_TOOLSET "Clang_3_6")

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${ANDROID_NATIVE_API_LEVEL} / ${ANDROID_ABI} / \
${CMAKE_VC_MDD_ANDROID_PLATFORM_TOOLSET} / \
c++11 support"
    "Visual Studio 14 2015"
)

include("utilities/polly_common.cmake")

include("flags/cxx11.cmake") # before toolchain!

include("os/vc-mdd-android.cmake")
