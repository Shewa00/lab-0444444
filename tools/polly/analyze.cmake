# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_ANALYZE_CMAKE_)
  return()
else()
  set(POLLY_ANALYZE_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Clang static analyzer / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx11.cmake")

set(CMAKE_CXX_COMPILER "scripts/clangxx-analyze.sh")
set(CMAKE_C_COMPILER "scripts/clang-analyze.sh")

list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "analyze")

include("os/osx.cmake")
