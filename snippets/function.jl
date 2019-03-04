## Julia 1.1.0


println("\n\n---------------- general ----------------")
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

# anonymous
println("\n\n---------------- anonymous ----------------")
f(r) = pi * r^2
g = f
for F in [f, g, x -> x^2 + 2x + 1, x -> x^3 - x^2 - 1]
    println("$(F)($(x)) -> $(F(x))")
end

x = 2
println("(x -> x^2 + 2x + 1)($x) -> $((x -> x^2 + 2x + 1)(x))")

# operators are functions
println("\n\n---------------- operators are functions ----------------")
add = +
x = (1, 2, 3)
for F in [add, +]
    println("$(F)($(x)) -> $(F(x...))")
end

# optional
println("\n\n---------------- optional ----------------")
function opsum(a::Int64, b::Int64=1, c::Int64=1)
	a + b + c
end

for V in [(1), (1, 2), (1, 2, 3)]
    println("opsum($V) -> $(opsum(V...))")
end

# dot
println("\n\n---------------- dot ----------------")

X = [1, 2, 3]
Y = [4, 5, 6]
simple(x, y) = x + 2y
println("simple.(1, $(X)) -> $(simple.(1, X))")
println("simple.($(X), $(Y)) -> $(simple.(X, Y))")
