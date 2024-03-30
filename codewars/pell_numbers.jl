function pell(n::Integer)
    output = BigInt[1, 2, 5]
    n < 4 && return output[n]
  
    for i in 4:n
        push!(output, 2*output[end] + output[end-1])
    end
    return output[end]
end
