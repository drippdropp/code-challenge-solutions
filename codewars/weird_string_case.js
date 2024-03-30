function toWeirdCase(string){
  let outputString = "";
  let letterPos = 0;
  
  const words = string.split(" ")
  
  for (let i = 0; i < words.length; ++i) {
    const word = words[i];
    
    for (let j = 0; j < word.length; ++j) {
      outputString += (j % 2 == 0 ? word.charAt(j).toUpperCase() : word.charAt(j).toLowerCase());        
    }
    
    if (i != words.length - 1) { outputString += ' '; }
  }
  
  return outputString;
}
