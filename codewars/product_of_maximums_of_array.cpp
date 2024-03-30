#include <vector>
#include <algorithm>

using namespace std; 

int maxProduct (vector<int>numbers , int sub_size)
{
  int product = 1;
  
  std::sort(numbers.rbegin(), numbers.rend());
  std::vector<int> outputvec(numbers.begin(), numbers.begin() + sub_size);
  for (int k : outputvec) product *= k;
  
  return product;
}
