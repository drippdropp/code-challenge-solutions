def square_digits(num):
    output = []
    while num > 0:
        val = num % 10
        num = num // 10
        output.append(str(val**2))
    if len(output) == 0:
        return 0
    else:
        return int(''.join(output[::-1]))
