## Julia 1.1.0

# Initialize
using Plots
plotlyjs() # Backend PlotlyJS

angles = 8 * 2π

a = 4
b = 8

steps = 100
anim = @animate for i = 1:steps
    Θ = range(0, stop=i * angles / (steps), length=10*i)
    x = a .* cos.(Θ)
    y = a .* sin.(Θ)
    z = b .* Θ
    plot(x, y, z, size=(960, 960))
end

gif(anim, "./gif/circular-helix.gif", fps = 30)
