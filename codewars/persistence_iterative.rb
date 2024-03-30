def persistence(n)
    steps = 0
    while n > 9 do
      steps += 1
      n = n.digits.reduce{ |p, x| p *= x }
    end
    steps
end
