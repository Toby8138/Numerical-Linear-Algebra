using LinearAlgebra

# a)
H = [1/(j+k-1) for j in 1:10, k in 1:10] # generate H
b = ones(10) # b

function solve_sys(H, b)
    L, R, P = lu(H) # PLR decomposition
    x = R \ (L \ (b[P])); # numerical solution for x
    
    return x
end

x_t = solve_sys(H, b)
print("Numerical solution: ")
println(x_t)

# b}

# backwards error in relation to the infinite norm
b_e = maximum(broadcast(abs, b - H*x_t))/(maximum(broadcast(abs,x_t)) * sum(H[1])) 
print("Relative backwards error: ")
println(b_e)


# c)
k = cond(Inf, H)
print("Condition of H: ")
println(k)

