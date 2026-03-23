void reverseNumber(int n) {
  int reversedNumber = 0;

  while (n > 0) {
    int lastDigit = n % 10;
    n = n ~/ 10;
    reversedNumber = reversedNumber * 10 + lastDigit; 
  }

  print('reversedNumber ${reversedNumber}');
  // Empty method
}

void main() {
  reverseNumber(12345);
}
