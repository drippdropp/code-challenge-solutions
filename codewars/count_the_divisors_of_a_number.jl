function divisors(k)
    k == 1 && return 1
    count = [1 for i in 1:isqrt(k) if k % i == 0] |> sum
    if isqrt(k) == sqrt(k)
        count += (count-1)
    else
        count *= 2
    end
    count
end
