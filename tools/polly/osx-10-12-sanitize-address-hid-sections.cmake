# Copyright (c) 2016, Ruslan Baratov
# Copyright (c) 2016, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_OSX_10_12_SANITIZE_ADDRESS_HID_SECTIONS_CMAKE_)
  return()
else()
  set(POLLY_OSX_10_12_SANITIZE_ADDRESS_HID_SECTIONS_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(OSX_SDK_VERSION "10.12")
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode (OS X ${OSX_SDK_VERSION}) / \
${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / Clang address sanitizer / c++11 support / hidden / function-sections / data-sections "
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.12" CACHE STRING "OS X Deployment target" FORCE)

include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("os/osx.cmake")
include("flags/sanitize_address.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
