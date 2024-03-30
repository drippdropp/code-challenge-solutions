#!/usr/bin/env julia


function sieve(N::Int)
    U = ones(N)
    U[1] = 0

    for p in 2:div(N,2)
        if U[p] == 1
            for m in 2*p:p:N
                U[m] = 0
            end
        end
    end

    U

end


j = 1
while j < 10
    try
        ps = [ idx for (idx, k) in enumerate(sieve(10^j)) if k == 1 ]
        if length(ps) >= 10_001
            return ps[10_001]
        end
        j += 1
    catch e
        continue
    end
end 

end
