## Julia 1.1.0

# anonymous
println("\n\n---------------- anonymous ----------------")
for V in [(1, 2 + 2, 2im, 3.14), (1, "Julia", NaN)]
    println("$V")
end

# named
println("\n\n---------------- named ----------------")

x = (a = 1, b = 2)
println("x.a -> $(x.a)")
println("x.b -> $(x.b)")

# function multiple return values
println("\n\n---------------- function multiple return values ----------------")
f(x, y) = x + y, x * y
a = f(2, 3)
b, c = f(2, 3)
println("a = $a, b = $b, c = $c")

# argument destructring
println("\n\n---------------- argument destructring ----------------")
minmax(x, y) = (y < x) ? (y, x) : (x, y)
range((min, max)) = max - min

println("range(minmax(2, 10)) -> $(range(minmax(2, 10)))")

# varargs functions
println("\n\n---------------- varargs functions ----------------")
x = [3,4]

vararg(a, b) = a + b
println("vararg($x...) -> $(vararg(x...))")
