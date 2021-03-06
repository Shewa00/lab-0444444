# Copyright (c) 2017, NeroBurner
# All rights reserved.

if(DEFINED POLLY_LINUX_MINGW_W32_)
  return()
else()
  set(POLLY_LINUX_MINGW_W32_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Windows / mingw-w64 / i686 / c++14 support / static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

# need to set system name for cross compiling from linux to windows
set(CMAKE_SYSTEM_NAME Windows)
set(CROSS_COMPILE_TOOLCHAIN_PREFIX "i686-w64-mingw32")
set(CMAKE_CROSSCOMPILING_EMULATOR wine64) # used for try_run calls

include(
    "compiler/gcc-cross-compile-simple-layout.cmake"
)
include("flags/cxx14.cmake")
include("flags/static.cmake")

