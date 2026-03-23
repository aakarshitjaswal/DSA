# Reverse Number

The idea is to extract digits from the end of the given number and create a new number in reverse order.
How to extract digits from the end of a number?

To extract the last digit, if you divide a number by 10, then the remainder will be the last digit. We can simply use the modulo(%) operator to do this, for example the last digit of 123 will be (123 % 10), which is 3.

To reduce the number by one digit from the end, simply divide the number by 10. example: to reduce 123 to 12, simply do (123/10) which is equal to 12.

To create a number from digits: The idea is to start with 0, and for every digit, multiply the number generated so far by 10, and add the digit to it. For example, to create a number from digits: [1,2,3] Consider the number, num = 0. Then,
For first digit: 1
num = num*10 + 1 = 0*10 + 1 = 1;

For second digit: 2
num = num*10 + 2 = 1*10 + 2 = 12;

For third digit: 3
num = num*10 + 2 = 12*10 + 3 = 123;
Run a while loop until the given number N is equal to zero while(N!=0)
Initialize a variable reverse = 0;
now in each step take the remainder of the given number N and store it as a variable digit, digit = N % 10
Also, Divide the number by 10. N= N / 10
in each step, the variable reverse get updated as reverse = reverse*10+digit.

```cpp
#include <stdio.h>
class Solution {
public:
    // Function to reverse a number
    void reverseNumber(int N) {
        int num = N;           // Store original number
        int reverse = 0;       // To store reversed number

        // Reverse logic
        while(N != 0) {
            int digit = N % 10;              // Extract last digit
            reverse = reverse * 10 + digit;  // Append digit
            N = N / 10;                      // Remove last digit
        }

        // Print reversed number
        printf("The reverse of the %d is %d", num, reverse);
    }
};

// Driver code
int main() {
    Solution obj;  
    int N = 123;  
    obj.reverseNumber(N);  
    return 0;
}
```
