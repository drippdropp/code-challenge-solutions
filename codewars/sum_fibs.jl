function sumfibs(n::Integer)::Integer
  fib(n) = reduce((acc, x) -> vcat(acc, acc[x-1]+acc[x-2]), 3:n, init=[1,1])
  filter(iseven, fib(n)) |> sum
end
