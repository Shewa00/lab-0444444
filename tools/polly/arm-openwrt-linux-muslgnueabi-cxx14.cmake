# Copyright (c) 2017, NeroBurner
# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_ARM_OPENWRT_LINUX_MUSLGNUEABI_)
  return()
else()
  set(POLLY_ARM_OPENWRT_LINUX_MUSLGNUEABI_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Linux / gcc / OpenWRT / MUSL / c++14 support / cortex-a9"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

string(COMPARE EQUAL "$ENV{ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT}" "" _is_empty)
if(_is_empty)
  polly_fatal_error("Environment variable 'ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT' is not set")
endif()

# set system name, this sets the variable CMAKE_CROSSCOMPILING
set(CMAKE_SYSTEM_NAME Linux)
set(CROSS_COMPILE_TOOLCHAIN_PREFIX "arm-openwrt-linux-muslgnueabi")

set(_expected_dir "$ENV{ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT}/${CROSS_COMPILE_TOOLCHAIN_PREFIX}")
if(NOT IS_DIRECTORY "${_expected_dir}")
  polly_fatal_error(
      "Directory not found: ${_expected_dir}"
      " (check ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT environment variable)"
  )
endif()

set(CROSS_COMPILE_TOOLCHAIN_PATH "$ENV{ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT}/bin")
set(CROSS_COMPILE_SYSROOT "$ENV{ARM_OPENWRT_LINUX_MUSLGNUEABI_ROOT}/usr/include") # ???

include(
    "compiler/gcc-cross-compile.cmake"
)
include("flags/cxx14.cmake")
include("flags/openwrt.cmake")

set(OPENWRT 1 CACHE INTERNAL "")
