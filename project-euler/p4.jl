#!/usr/bin/env julia

function ispalindrome(N::Int64)
    X = digits(N)
    Xlen = length(X)

    step = Xlen & 1 == 0 ? 1 : 2    
    X[1:div(Xlen, 2)] == reverse(X[div(Xlen, 2)+step:end])
end

[ispalindrome(x*y) ? x*y : 0 for x in 100:999 for y in 100:999] |> maximum |> println

