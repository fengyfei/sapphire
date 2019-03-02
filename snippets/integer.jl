## Julia 1.1.0

# Integer: (min, max)
println("\n\n---------------- Integer: (min, max) ----------------")
for T in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
    println("$(lpad(T,7)): [$(typemin(T)),$(typemax(T))]") 
end

# Integer: overflow
println("\n\n---------------- Integer: overflow ----------------")
max = typemax(Int64)
if (max + 1 == typemin(Int64))
    println("Int64 overflow detected ", max, " + 1 = ", max + 1)
end
println("BigInt(typemax(Int64) + 1) is $(BigInt(typemax(Int64)))")

# Float: zero
println("\n\n---------------- Float: zero ----------------")
println("0.0 == 0.0 is ", 0.0 == 0.0)
println("bitstring(0.0) is ", bitstring(0.0))
println("bitstring(-0.0) is ", bitstring(-0.0))
println("1/Inf is ", 1/Inf)

# Float: (min, max)
println("\n\n---------------- Float: (min, max) ----------------")
for T in [Float32, Float64]
    println("$(lpad(T,7)): [$(typemin(T)), $(typemax(T))], eps: $(eps(T))")
end

# Float: eps, nextfloat
println("\n\n---------------- Float: eps, nextfloat ----------------")
for V in [1e-10, 1e-5, 1.0, 2.0, 10.0, 100.0, 1000.0]
    println("eps($(V)) is $(eps(V)), nextfloat is $(nextfloat(V))")
end

# Operator: exponential
x = 3
println("\n\n---------------- Operator: exponential ----------------")
println("x = $(x), 2(x-1)^2 - 3(x-1) + 1 = $(2(x-1)^2 - 3(x-1) + 1)")
println("x = $(x), 2^2x = $(2^2x)")
