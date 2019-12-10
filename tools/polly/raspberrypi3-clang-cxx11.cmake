# Copyright (c) 2015, 2017 Alexandre Pretyman
# Copyright (c) 2019 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_RASPBERRYPI3_CLANG_CXX11_CMAKE_)
  return()
else()
  set(POLLY_RASPBERRYPI3_CLANG_CXX11_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "RaspberryPi 3 Cross Compile / Clang / C++11"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include(polly_clear_environment_variables)

include("flags/cxx11.cmake")
include("compiler/clang.cmake")

include("compiler/clang-tools.cmake")

include("flags/lld.cmake")
include("flags/arm-linux-gnueabihf.cmake")

include("os/rpi-sysroot.cmake")

include("os/raspberry-pi3.cmake")
include("os/raspberry-pi-hardfloat.cmake")
