#!/usr/bin/env julia

[ x % 3 == 0 || x % 5 == 0 ? x : 0 for x in 1:999 ] |> sum |> println
