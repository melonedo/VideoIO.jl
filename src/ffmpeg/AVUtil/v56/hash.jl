# Julia wrapper for header: /usr/include/libavutil/hash.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    av_hash_alloc,
    av_hash_names,
    av_hash_get_name,
    av_hash_get_size,
    av_hash_init,
    av_hash_update,
    av_hash_final,
    av_hash_final_bin,
    av_hash_final_hex,
    av_hash_final_b64,
    av_hash_freep


function av_hash_alloc(ctx, name)
    ccall((:av_hash_alloc, libavutil), Cint, (Ptr{Ptr{Cvoid}}, Cstring), ctx, name)
end

function av_hash_names(i::Integer)
    ccall((:av_hash_names, libavutil), Cstring, (Cint,), i)
end

function av_hash_get_name(ctx)
    ccall((:av_hash_get_name, libavutil), Cstring, (Ptr{Cvoid},), ctx)
end

function av_hash_get_size(ctx)
    ccall((:av_hash_get_size, libavutil), Cint, (Ptr{Cvoid},), ctx)
end

function av_hash_init(ctx)
    ccall((:av_hash_init, libavutil), Cvoid, (Ptr{Cvoid},), ctx)
end

function av_hash_update(ctx, src, len::Integer)
    ccall((:av_hash_update, libavutil), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}, Cint), ctx, src, len)
end

function av_hash_final(ctx, dst)
    ccall((:av_hash_final, libavutil), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}), ctx, dst)
end

function av_hash_final_bin(ctx, dst, size::Integer)
    ccall((:av_hash_final_bin, libavutil), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}, Cint), ctx, dst, size)
end

function av_hash_final_hex(ctx, dst, size::Integer)
    ccall((:av_hash_final_hex, libavutil), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}, Cint), ctx, dst, size)
end

function av_hash_final_b64(ctx, dst, size::Integer)
    ccall((:av_hash_final_b64, libavutil), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}, Cint), ctx, dst, size)
end

function av_hash_freep(ctx)
    ccall((:av_hash_freep, libavutil), Cvoid, (Ptr{Ptr{Cvoid}},), ctx)
end
