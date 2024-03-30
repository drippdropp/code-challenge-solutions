#!/usr/bin/env julia

(sum(1:100) .^ 2) - ([ x*x for x in 1:100 ] |> sum)
