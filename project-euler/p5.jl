#!/usr/bin/env julia

function smallestmultiple()
"""smallestmultiple

Everything is divisible by 1
2 and 5 is 10 and 2 and 10 is 20
2 and 3 is 6 and 2 and 6 is 12
2 and 7 is 14
2 and 8 is 16
2 and 9 is 18

dont need 15 since 3 and 5 is 15
3 and 7 and the rest scale > 20, so we can ignore those products

will need 11, 13, 17, 19 since they're all prime
"""
    lcm([11,12,13,14,16,17,18,19,20]) |> println
end

smallestmultiple()
