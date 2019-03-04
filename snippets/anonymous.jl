## Julia 1.1.0

λ = map

λ(x -> print("$x "),
    λ(x -> x^2 + 2x - 1, [1, 2, 3, 4]))

println()

λ(x -> print("$x "),
    λ(x -> begin
        if x < 0 && iseven(x)
            return 0
        elseif x == 0
            return 1
        else
            return x
        end
    end, [0, 1, 2, 3]))

println()

map(x -> print("$x "),
    map([0, 1, 2, 3]) do x
        if x < 0 && iseven(x)
            return 0
        elseif x == 0
            return 1
        else
            return x
        end
    end)
