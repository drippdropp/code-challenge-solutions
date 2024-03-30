def persistence(n)
    return 0 if n < 9
    1 + persistence(n.digits.reduce(&:*))
end
