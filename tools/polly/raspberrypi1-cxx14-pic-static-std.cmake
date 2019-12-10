# Copyright (c) 2015, 2017 Alexandre Pretyman
# Copyright (c) 2017 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_RASPBERRYPI1_CXX14_PIC_CMAKE_)
  return()
else()
  set(POLLY_RASPBERRYPI1_CXX14_PIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "RaspberryPi 1 Cross Compile / C++14 / PIC"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include(polly_clear_environment_variables)

include("flags/cxx14.cmake")
include("flags/static-std.cmake")
include("compiler/gcc-cross-compile-raspberry-pi.cmake")
include("os/raspberry-pi1.cmake")

include("flags/fpic.cmake")
