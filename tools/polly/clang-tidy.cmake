# Copyright (c) 2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_TIDY_CMAKE_)
  return()
else()
  set(POLLY_CLANG_TIDY_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Clang tidy / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("flags/cxx11.cmake")
include("flags/clang-tidy.cmake")
