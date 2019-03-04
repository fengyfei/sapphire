## Julia 1.1.0

# Initialize
using Plots
plotlyjs() # Backend PlotlyJS

x = range(-4 * pi, stop = 4 * pi, length = 1000)

plot(x, sin.(x))
savefig("./png/sin.png")
