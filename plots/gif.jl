## Julia 1.1.0

# Initialize
using Plots
plotlyjs() # Backend PlotlyJS

left = -4 * pi
steps = 100

x = left

anim = @animate for i = 1:steps
    x = range(left, stop=i * abs(left) * 2 / (steps), length=10*i)
    sinx = sin.(x)
    plot(x, sinx)
end

gif(anim, "./gif/sin.gif", fps = 30)
