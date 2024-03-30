def sort_array(source_array):
    target_indices = []
    odd_numbers = []
    
    for (idx, k) in enumerate(source_array):
        if k & 1 == 1:
            target_indices.append(idx)
            odd_numbers.append(k)
    
    odd_numbers.sort()
    
    pos = 0
    for j in target_indices:
        source_array[j] = odd_numbers[pos]
        pos += 1
        
    return source_array
