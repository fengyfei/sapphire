# Julia 1.1.0
s = "Let's build a better world, together."

println("\n\n---------------- firstindex:lastindex ----------------")
for i = firstindex(s):lastindex(s)
    try
        println("$(s[i : end]) <- s[$(i):end]")
    catch
        # ignore the index error
    end
end

println("\n\n---------------- for in ----------------")
for c in s
    println(c)
end

println("\n\n---------------- foreach ----------------")
foreach(println, s)
