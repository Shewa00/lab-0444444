# Copyright (c) 2015-2017, Ruslan Baratov
# Copyright (c) 2015, David Hirvonen
# Copyright (c) 2015, Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R14_API_19_ARMEABI_V7A_NEON_HID_SECTIONS_LTO_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R14_API_19_ARMEABI_V7A_NEON_HID_SECTIONS_LTO_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r14")
set(CMAKE_SYSTEM_VERSION "19")
set(CMAKE_ANDROID_ARCH_ABI "armeabi-v7a")
set(CMAKE_ANDROID_ARM_NEON TRUE)
set(CMAKE_ANDROID_ARM_MODE TRUE) # 32-bit ARM

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \
NEON / 32-bit ARM / c++11 support / hidden / function-sections / data-sections / LTO"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx11.cmake") # before toolchain!

include("flags/function-sections.cmake")

include("flags/data-sections.cmake")

include("flags/hidden.cmake")

include("os/android.cmake")

include("flags/lto.cmake") # after 'os/android.cmake'
