# Copyright (c) 2015, 2017 Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_RASPBERRYPI3_CXX11_CMAKE)
  return()
else()
  set(POLLY_RASPBERRYPI3_CXX11_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "RaspberryPi 3 / gcc / PIC / c++11 support / hidden / function-sections / data-sections"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include(polly_clear_environment_variables)

include("flags/cxx11.cmake")
include("compiler/gcc-cross-compile-raspberry-pi.cmake")
include("os/raspberry-pi3.cmake")
include("os/raspberry-pi-hardfloat.cmake")

include("flags/fpic.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
