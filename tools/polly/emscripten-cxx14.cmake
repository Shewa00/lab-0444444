# Copyright (c) 2016, Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_EMSCRIPTEN_CXX14_CMAKE)
  return()
else()
  set(POLLY_EMSCRIPTEN_CXX14_CMAKE 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Emscripten Cross Compile / C++14"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")
include(polly_clear_environment_variables)
include("flags/cxx14.cmake")
include("compiler/emscripten.cmake")

