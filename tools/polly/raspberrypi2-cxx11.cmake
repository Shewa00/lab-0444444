# Copyright (c) 2015, 2017 Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_RASPBERRYPI2_CXX11_CMAKE)
  return()
else()
  set(POLLY_RASPBERRYPI2_CXX11_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "RaspberryPi 2 Cross Compile / C++11"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include(polly_clear_environment_variables)

include("flags/cxx11.cmake")
include("compiler/gcc-cross-compile-raspberry-pi.cmake")
include("os/raspberry-pi2.cmake")
include("os/raspberry-pi-hardfloat.cmake")

