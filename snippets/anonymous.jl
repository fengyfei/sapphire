## Julia 1.1.0

λ = map

λ(x -> print("$x "),
    λ(x -> x^2 + 2x - 1, [1, 2, 3, 4]))