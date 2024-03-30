def count_bits(n):
    bits = 0
    while n > 0:
        n &= (n-1)
        bits += 1
    return bits
