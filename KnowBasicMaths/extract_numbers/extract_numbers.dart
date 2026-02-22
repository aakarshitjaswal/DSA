import 'dart:io';

void extractNumbers(int n) {
  List<int> arr = [];
  int currentN = n;
  while (currentN > 0) {
    int lastDigit = currentN % 10;
    arr.add(lastDigit);
    currentN = currentN ~/ 10; // Use integer division to update n
  }
  print(arr);
}

void main() {
  extractNumbers(12345);
}
