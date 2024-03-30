#include <string>

std::string DNAStrand(const std::string& dna)
{
  std::string output_string;
  for (size_t i = 0; i < dna.length(); ++i) {
    char c = dna.at(i);
    
    if (c == 'A') output_string += "T";
    else if (c == 'T') output_string += "A";
    else if (c == 'C') output_string += "G";
    else if (c == 'G') output_string += "C";
  }
  
  return output_string;
}