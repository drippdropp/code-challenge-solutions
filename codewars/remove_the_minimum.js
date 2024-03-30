function removeSmallest(numbers) {
    if (numbers.length <= 1) return [];
    
    let lowestValue = Number.POSITIVE_INFINITY;
    let lowestValueIndex = 0;
    
    for (let i = 0; i < numbers.length; ++i) {
      if (numbers[i] < lowestValue) {
        lowestValue = numbers[i];
        lowestValueIndex = i;
      }
    }
    
    let output = [];
    
    for (let i = 0; i < numbers.length; ++i) {
      if (i != lowestValueIndex) { output.push(numbers[i]); }
    }
  
    return output;
  }
  