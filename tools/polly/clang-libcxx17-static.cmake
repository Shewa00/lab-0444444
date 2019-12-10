# Copyright (c) 2013, 2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_CLANG_LIBCXX17_STATIC_CMAKE_)
  return()
else()
  set(POLLY_CLANG_LIBCXX17_STATIC_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "clang / LLVM Standard C++ Library (libc++) / c++17 support / static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("library/std/libcxx.cmake")
include("flags/cxx17.cmake")
include("flags/static.cmake")

# Fix linker errors {
# - https://stackoverflow.com/a/53395190
polly_add_cache_flag(CMAKE_EXE_LINKER_FLAGS "-lc++abi")
polly_add_cache_flag(CMAKE_EXE_LINKER_FLAGS "-pthread")
polly_add_cache_flag(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld")

polly_add_cache_flag(CMAKE_SHARED_LINKER_FLAGS "-lc++abi")
polly_add_cache_flag(CMAKE_SHARED_LINKER_FLAGS "-pthread")
polly_add_cache_flag(CMAKE_SHARED_LINKER_FLAGS "-fuse-ld=lld")
# }

include("os/osx.cmake")
