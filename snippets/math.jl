## Julia 1.1.0

# println(" -> $()")

# dot
println("\n\n---------------- dot ----------------")
println("[1, 2, 3] .^ 3 -> $([1, 2, 3] .^ 3)")

# NaN
println("\n\n---------------- NaN ----------------")
println("NaN == NaN -> $(NaN == NaN)")
println("NaN != NaN -> $(NaN != NaN)")
println("NaN < NaN -> $(NaN < NaN)")
println("NaN > NaN -> $(NaN > NaN)")

# Comparisons
x = 1
println("\n\n---------------- Comparisons ----------------")
println("isequal(NaN, NaN32) -> $(isequal(NaN, NaN32))")
for T in [isfinite, isinf, isnan]
    println("$(T)($(x)) -> $(T(x))")
end

v(x) = (println(x); x)
println("v(1) < v(2) <= v(3) -> $(v(1) < v(2) <= v(3))")

# Rounding
x = 1.1
println("\n\n---------------- Rounding ----------------")
println("round($(x)) -> $(round(x))")
println("round(UInt32, $(x)) -> $(round(UInt32, x))")
println("floor($(x)) -> $(floor(x))")
println("floor(UInt32, $(x)) -> $(floor(UInt32, x))")
println("ceil($(x)) -> $(ceil(x))")
println("ceil(UInt32, $(x)) -> $(ceil(UInt32, x))")
println("trunc($(x)) -> $(trunc(x))")
println("trunc(UInt32, $(x)) -> $(trunc(UInt32, x))")

# Division
x = 17
y = 13
println("\n\n---------------- Division ----------------")
for T in [div, fld, cld, rem, mod, mod1, fldmod, gcd, lcm]
    println("$(T)($(x), $(y)) -> $(T(x, y))")
end
println("mod2pi($(x)) -> $(mod2pi(x))")

# Power, Logs, Roots
x = 17.0
y = 13
println("\n\n---------------- Power, Logs, Roots ----------------")
for T in [sqrt, cbrt, exp, expm1, log, log2, log1p, exponent, significand]
    println("$(T)($(x)) -> $(T(x))")
end
println("hypot($(x), $(y)) -> $(hypot(x, y))")
println("ldexp($(x), 3) -> $(ldexp(x, 3))")
println("log(3.14, $(x)) -> $(log(3.14, x))")
