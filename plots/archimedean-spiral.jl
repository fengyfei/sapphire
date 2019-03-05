## Julia 1.1.0

# Initialize
using Plots
plotlyjs() # Backend PlotlyJS

# Archimedean Spiral
# r = a + bΘ

a = 1.0
b = 2.0
angles = 8π
Θ = range(0, stop = angles, length = 1000)
r = a .+ b .* Θ

plot(Θ, r, proj=:polar)
savefig("./png/archimedean-spiral.png")

steps = 100
anim = @animate for i = 1:steps
    Θ = range(0, stop = angles * i / steps, length = 10 * i)
    r = a .+ b .* Θ
    plot(Θ, r, proj=:polar)
end

gif(anim, "./gif/archimedean-spiral.gif", fps = 30)
