# https://projecteuler.net/problem=9

function pytrips_product()
    for a in 1:1000
        for b in a:1000
            c = 1000 - a - b
            if a^2 + b^2 == c^2
                return a * b * c
            end
        end
    end
end
