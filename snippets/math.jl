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
println("\n\n---------------- Comparisons ----------------")
println("isequal(NaN, NaN32) -> $(isequal(NaN, NaN32))")
println("isfinite(1) -> $(isfinite(1))")
println("isinf(1) -> $(isinf(1))")
println("isnan(1) -> $(isnan(1))")

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
println("div($(x), $(y)) -> $(div(x, y))")
println("fld($(x), $(y)) -> $(fld(x, y))")
println("cld($(x), $(y)) -> $(cld(x, y))")
println("rem($(x), $(y)) -> $(rem(x, y))")
println("mod($(x), $(y)) -> $(mod(x, y))")
println("mod1($(x), $(y)) -> $(mod1(x, y))")
println("mod2pi($(x)) -> $(mod2pi(x))")
println("fldmod($(x), $(y)) -> $(fldmod(x, y))")
println("gcd($(x), $(y)) -> $(gcd(x, y))")
println("lcm($(x), $(y)) -> $(lcm(x, y))")

# Power, Logs, Roots
x = 17.0
y = 13
println("\n\n---------------- Power, Logs, Roots ----------------")
println("sqrt($(x)) -> $(sqrt(x))") # square root
println("cbrt($(x)) -> $(cbrt(x))") # cube root
println("hypot($(x), $(y)) -> $(hypot(x, y))")
println("exp($(x)) -> $(exp(x))")
println("expm1($(x)) -> $(expm1(x))")
println("ldexp($(x), 3) -> $(ldexp(x, 3))")
println("log($(x)) -> $(log(x))")
println("log(3.14, $(x)) -> $(log(3.14, x))")
println("log2($(x)) -> $(log2(x))")
println("log10($(x)) -> $(log10(x))")
println("log1p($(x)) -> $(log1p(x))")
println("exponent($(x)) -> $(exponent(x))")
println("significand($(x)) -> $(significand(x))")
