#!/usr/bin/env julia

function primefactors(N::Int)
    factors = Int64[]
    while (N % 2 == 0)
	push!(factors, 2)
	N /= 2
    end

    for x in 3:2:trunc(sqrt(N))
	while (N % x == 0)
	    push!(factors, x)
	    N /= x
	end
    end

    return factors
end

N = parse(Int64, ARGS[1])
primefactors(N) |> maximum |> println

