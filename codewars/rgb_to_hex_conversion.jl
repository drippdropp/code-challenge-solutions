module Solution
export rgb

function rgb(r, g, b)
  map(x -> UInt8(clamp(x, 0, 255)), [r, g, b]) |> bytes2hex |> uppercase
end
end
