module Cubes
    export find_nb

    function find_nb(m)
      m = big(m)
      n = (sqrt(1 + 8 * sqrt(m)) - 1) / 2
      n == floor(n) ? Int(n) : -1
    end

end
