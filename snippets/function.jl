## Julia 1.1.0

# common
function ×(x, y)
    x * y
end

# simple
∑(x, y) = x + y

x = 10
y = 2
for F in [∑, ×]
    println("$(F)($(x), $(y)) -> $(F(x, y))")
end

# hypot
function hypot(x,y)
    x = abs(x)
    y = abs(y)

    if x > y
        r = y / x
        return x * sqrt(1 + r * r)
    end

    if y == 0
        return zero(x)
    end

    r = x / y
    return y * sqrt(1 + r * r)
end

println("hypot(3, 4) -> $(hypot(3, 4))")
