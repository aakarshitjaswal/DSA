#include <iostream>
#include <vector>

void extractNumbers(int n) {
    std::vector<int> arr;

    while (n > 0) {
        int lastDigit = n % 10;
        n = n / 10;
        arr.push_back(lastDigit);
    }

    std::cout << "Extracted digits: ";
    for (int i = 0; i < arr.size(); i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;

} 

int main() {
    extractNumbers(12345);
    return 0;
} 

