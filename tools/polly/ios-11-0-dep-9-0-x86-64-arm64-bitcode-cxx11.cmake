# Copyright (c) 2017-2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_11_0_DEP_9_0_X86_64_ARM64_BITCODE_CXX11_CMAKE_)
  return()
else()
  set(POLLY_IOS_11_0_DEP_9_0_X86_64_ARM64_BITCODE_CXX11_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 11.0)
set(IOS_DEPLOYMENT_SDK_VERSION 9.0)

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} / Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / Universal (x86_64 + arm64) / \
${POLLY_XCODE_COMPILER} / \
bitcode / \
c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(IPHONEOS_ARCHS arm64)
set(IPHONESIMULATOR_ARCHS x86_64)

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx11.cmake")
include("flags/bitcode.cmake") # after os/iphone.cmake

include("utilities/polly_ios_development_team.cmake")
