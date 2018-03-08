@inline function add_fpdb_db(x::T, y::Double{T,E}) where {T<:AbstractFloat, E<:Emphasis}
    hi, lo = add_fpdd_dd(x, HILO(y))
    return Double(E, hi, lo)
end

@inline function sub_fpdb_db(x::T, y::Double{T,E}) where {T<:AbstractFloat, E<:Emphasis}
    hi, lo = sub_fpdd_dd(x, HILO(y))
    return Double(E, hi, lo) 
end

@inline function mul_fpdb_db(x::T, y::Double{T,E}) where {T<:AbstractFloat, E<:Emphasis}
    hi, lo = mul_fpdd_dd(x, HILO(y))
    return Double(E, hi, lo)
end

@inline function dvi_fpdb_db(x::T, y::Double{T,Accuracy}) where {T<:AbstractFloat}
    hi, lo = dvi_fpdd_dd(x, HILO(y))
    return Double(Accuracy, hi, lo)
end

@inline function dvi_fpdb_db(x::T, y::Double{T,Performance}) where {T<:AbstractFloat}
    hi, lo = dvi_fpdd_dd_fast(x, HILO(y))
    return Double(Performance, hi, lo)
end
