function beeramid(bonus, price)
  # if the bonus is less than 0, 
  # we can't buy any cans, so return 0.
  bonus < 0 && return 0
  
  # using integer division, we determine
  # the number of cans we can purchase with
  # the bonus.
  cans = div(bonus, price)

  # we memoize the squares since we'll be
  # stacking based on those values.
  # we'll never have more than √cans squares,
  # so we range up to that.
  squares = [x*x for x in 1:isqrt(Int(trunc(cans)))]

  # initialize `s` as the sum of cans so far 
  # and `steps` as the number of levels in the pyramid
  s, steps = zero(Int), zero(Int)

  # iterate over the squares, adding each level
  # to s. if we exceed the number of cans, stop,
  # otherwise keep incrementing the number of levels.
  for i in squares
      s += i
      s > cans && break
      steps += 1
  end

  steps
end
