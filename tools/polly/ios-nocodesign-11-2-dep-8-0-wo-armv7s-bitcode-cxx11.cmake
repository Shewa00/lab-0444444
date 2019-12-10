# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_NOCODESIGN_11_2_DEP_8_0_WO_ARMV7S_BITCODE_CXX11_CMAKE_)
  return()
else()
  set(POLLY_IOS_NOCODESIGN_11_2_DEP_8_0_WO_ARMV7S_BITCODE_CXX11_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 11.2)
set(IOS_DEPLOYMENT_SDK_VERSION 8.0)

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} / Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / Universal (iphoneos + iphonesimulator) / \
armv7 arm64 / i386 x86_64 / \
${POLLY_XCODE_COMPILER} / \
No code sign / \
bitcode / \
c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)

include("flags/ios_nocodesign.cmake")

set(IPHONEOS_ARCHS armv7;arm64)
set(IPHONESIMULATOR_ARCHS i386;x86_64)

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx11.cmake")
include("flags/bitcode.cmake") # after os/iphone.cmake
