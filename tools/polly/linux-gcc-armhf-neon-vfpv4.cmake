# Copyright (c) 2017, NeroBurner
# All rights reserved.

# install cross compiler on Ubuntu
# - sudo apt install g++-arm-linux-gnueabihf
# - with gfortran: sudo apt install gfortran-arm-linux-gnueabihf

if(DEFINED POLLY_LINUX_GCC_ARMHF_NEON_VFPV4_)
  return()
else()
  set(POLLY_LINUX_GCC_ARMHF_NEON_VFPV4_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Linux / gcc / armhf / c++11 support / neon-vfpv4"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

# set system name, this sets the variable CMAKE_CROSSCOMPILING
set(CMAKE_SYSTEM_NAME Linux)
set(CROSS_COMPILE_TOOLCHAIN_PREFIX "arm-linux-gnueabihf")
set(CMAKE_CROSSCOMPILING_EMULATOR qemu-arm) # used for try_run calls

include(
    "compiler/gcc-cross-compile-simple-layout.cmake"
)
include("flags/cxx11.cmake")
include("flags/hardfloat.cmake")
include("flags/neon-vfpv4.cmake")

