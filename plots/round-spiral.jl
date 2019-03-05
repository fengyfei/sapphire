## Julia 1.1.0

# Initialize
using Plots
plotlyjs() # Backend PlotlyJS

angles = 200 * 2π
Θ = range(0, stop = angles, length = 10000)

x(n) = cos.(Θ) + (1.0/n) .* cos.(n .* Θ)
y(n) = sin.(Θ) - (1.0/n) .* sin.(n .* Θ)

v = exp(0.0625)
plot(x(v), y(v), size=(960, 960))
savefig("./png/round-spiral.png")
