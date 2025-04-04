#ifndef __DXC_CONFIG_H__
#define __DXC_CONFIG_H__

/* Build static libraries instead of shared libraries. */
#cmakedefine DXC_BUILD_STATIC
/* Disable overriding memory allocators. */
#cmakedefine DXC_DISABLE_ALLOCATOR_OVERRIDES
/* Generate a trap if an hlsl::Exception is thrown during code generation */
#cmakedefine DXC_CODEGEN_EXCEPTIONS_TRAP

#endif
