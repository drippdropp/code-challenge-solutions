module Perimeter
    export perimeter
    function perimeter(n)
        fib(n) = reduce( (acc, el) -> vcat(acc, big(acc[el-1])+acc[el-2]) , 3:n; init=[1,1])
        return 4 * (fib(n+1) |> sum)
    end
end
