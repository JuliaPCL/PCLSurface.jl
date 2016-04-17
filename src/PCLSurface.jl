module PCLSurface

using LibPCL
using PCLCommon
using Cxx

const libpcl_surface = LibPCL.find_library_e("libpcl_surface")
try
    Libdl.dlopen(libpcl_surface, Libdl.RTLD_GLOBAL)
catch e
    warn("You might need to set DYLD_LIBRARY_PATH to load dependencies proeprty.")
    rethrow(e)
end

end # module
