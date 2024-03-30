#!/usr/bin/env julia

function fibevensum(N::Int)
    X = [1, 2]
    while X[end] < N
        push!(X, X[end] + X[end-1])
    end

    return filter(x -> x & 1 == 0, X) |> sum
end

N = parse(Int, ARGS[1])
fibevensum(N) |> println
