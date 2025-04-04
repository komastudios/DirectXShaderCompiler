# Copyright (C) Microsoft Corporation. All rights reserved.
# This file is distributed under the University of Illinois Open Source License.
# See LICENSE.TXT for details.

unset(EXTRA_SOURCES)

if (LLVM_ENABLE_ZLIB)
  set(HLSL_IGNORE_SOURCES miniz.c)
else()
  set(EXTRA_SOURCES miniz.c)
endif()

add_llvm_library(LLVMDxilCompression
  DxilCompression.cpp
  ${EXTRA_SOURCES}

  ADDITIONAL_HEADER_DIRS
)

if (LLVM_ENABLE_ZLIB)
  target_link_libraries(LLVMDxilCompression PRIVATE ZLIB::ZLIB)
endif()

add_dependencies(LLVMDxilCompression intrinsics_gen)

