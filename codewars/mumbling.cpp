class Accumul
{
public:
    static std::string accum(const std::string &s) {
      size_t current_index = 0;
      std::string output_string;

      for (size_t j = 0; j < s.length(); ++j) {
          char letter = s.at(current_index);

          for (size_t i = 0; i < current_index + 1; ++i) {
              if (i == 0) { letter = toupper(letter); }
              else { letter = tolower(letter); }
              output_string += letter;
          }

          if (current_index++ < s.length()-1) { output_string += '-'; }
      }
      return output_string;
    }
  
};
