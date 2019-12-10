# Copyright (c) 2015, Tomas Zemaitis
# Copyright (c) 2016, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_IOS_NOCODESIGN_11_0_ARM64_DEP_9_0_DEVICE_LIBCXX_HID_SECTIONS_CMAKE_)
  return()
else()
  set(POLLY_IOS_NOCODESIGN_11_0_ARM64_DEP_9_0_DEVICE_LIBCXX_HID_SECTIONS_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 11.0)
set(IOS_DEPLOYMENT_SDK_VERSION 9.0)
set(POLLY_XCODE_COMPILER "clang")

polly_init(
    "iOS ${IOS_SDK_VERSION} / Universal (arm64) / \
Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / \
${POLLY_XCODE_COMPILER} / \
No code sign / \
c++14 support / hidden / data-sections / function-sections"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)
set(CMAKE_MACOSX_BUNDLE YES)

# Verify XCODE_XCCONFIG_FILE
set(
    _polly_xcode_xcconfig_file_path
    "scripts/NoCodeSign.xcconfig"
)
if(NOT EXISTS "$ENV{XCODE_XCCONFIG_FILE}")
  polly_fatal_error(
      "Path specified by XCODE_XCCONFIG_FILE environment variable not found"
      "($ENV{XCODE_XCCONFIG_FILE})"
      "Use this command to set: "
      "    export XCODE_XCCONFIG_FILE=${_polly_xcode_xcconfig_file_path}"
  )
else()
  string(
      COMPARE
      NOTEQUAL
      "$ENV{XCODE_XCCONFIG_FILE}"
      "${_polly_xcode_xcconfig_file_path}"
      _polly_wrong_xcconfig_path
  )
  if(_polly_wrong_xcconfig_path)
    polly_fatal_error(
        "Unexpected XCODE_XCCONFIG_FILE value: "
        "    $ENV{XCODE_XCCONFIG_FILE}"
        "expected: "
        "    ${_polly_xcode_xcconfig_file_path}"
    )
  endif()
endif()

set(IPHONEOS_ARCHS arm64)
set(IPHONESIMULATOR_ARCHS "")

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx14.cmake")
include("flags/hidden.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
