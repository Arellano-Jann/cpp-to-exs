#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>

class WordSorter {
public:
    std::vector<std::string> getSortedWords(std::ifstream &file) {
        std::vector<std::string> words;
        std::string word;

        // Read each word from the file and add it to the vector
        while (file >> word) {
            words.push_back(word);
        }

        // Sort the vector in alphabetical order
        std::sort(words.begin(), words.end());
        return words;
    }
};



int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Error: Invalid number of arguments." << std::endl;
        std::cerr << "Usage: " << argv[0] << " input_file" << std::endl;
        return 1;
    }
    std::ifstream file(argv[1]);
    if (!file) {
        std::cerr << "Error: Unable to open file " << argv[1] << std::endl;
        return 1;
    }
    WordSorter wordSorter;
    std::vector<std::string> words = wordSorter.getSortedWords(file);

    // Output the sorted words
    for (const auto& w : words) {
        std::cout << w << " ";
    }
    std::cout << std::endl;

    return 0;
}


