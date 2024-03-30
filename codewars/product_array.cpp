#include <vector>

using namespace std; 

vector <int> productArray (vector <int> numbers)
{
  std::vector<int> outputAry(numbers.size());
  for (size_t i = 0; i < numbers.size(); ++i) {
    int product = 1;
    for (size_t j = 0; j < numbers.size(); ++j) {
      if (i != j) product *= numbers[j];
    }
    outputAry[i] = product;    
  }
  return outputAry;
}
