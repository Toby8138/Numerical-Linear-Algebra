function Cholesky(A)
    m,~ = size(A)
    L = zeros(eltype(A),m,m)
    for k = 1:m
        lk = L[1:k-1,1:k-1]\A[1:k-1,k]
        L[k,1:k-1] = lk'
        L[k,k] = sqrt(A[k,k] - lk'*lk)
    end
    return L
end
