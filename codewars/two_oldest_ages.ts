// return the two oldest/oldest ages within the array of ages passed in.
// it should return the two ages as a sorted array, youngest age first
export function twoOldestAges(ages: number[]): number[] {
  let outputAry: number[] = [-Infinity, -Infinity];
  
  for (let i: number = 0; i < ages.length; ++i) {
    if (ages[i] > outputAry[1]) {
      outputAry[0] = outputAry[1];
      outputAry[1] = ages[i];
    } else if (ages[i] > outputAry[0]) {
      outputAry[0] = ages[i];
    }
  }
  
  return outputAry;
}