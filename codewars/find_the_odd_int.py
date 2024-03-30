def find_it(seq):
    hist = {}
    for j in seq:
        hist[j] = hist[j] + 1 if j in hist else 1
    for k in hist:
        if hist[k] & 1 == 1:
            return k
    return None
    