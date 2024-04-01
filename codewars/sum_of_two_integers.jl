# I need to add two numbers without using the + operator

function add(a::Int, b::Int)::Int
    b == 0 && return a
    s = a ⊻ b
    c = (a & b) << 1
    add(s, c)
end
