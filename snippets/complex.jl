## Julia 1.1.0

z = 1 + 2im
for T in [real, imag, conj, abs, abs2, angle, sqrt, sin, cos, sinh, cosh, exp]
    println("$(T)($(z)) -> $(T(z))")
end
