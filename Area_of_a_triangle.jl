using LinearAlgebra

# Standard Heron's Formula
function Heron(a, b, c)
    s = 1/2*(a + b + c)
    return s*(s-a)*(s-b)*(s-c)
end

# Kahan's numerical stable algorithm 
Kahan(a, b, c) = 1/16*(a + (b + c)) * (c - (a - b)) * (c + (a - b)) * (a + (b - c))


# Normal example
x = 3
y = 4
z = 5

# The two calculated areas are the same
println(Heron(x, y, z))
println(Kahan(x, y, z))

# Extreme example
a = 10000000000
b = 10000000000
c = 0.00000001

# The two calculated areas are completely different
println(Heron(a, b, c))
println(Kahan(a, b, c))
