# Deep Understanding: Reversing a Number

To truly understand how to reverse a number, we must look at the **Base-10 positional system**.

## 1. Problem Statement
The goal is to take an integer `n` and return its digits in reverse order. For example, `123` becomes `321`.

## 2. The Core Intuition (The "Why")
In our base-10 system, the position of a digit determines its value (hundreds, tens, ones).
To reverse a number, we perform a "Peel and Stack" operation:
1. **Peel**: Extract the last digit of the current number.
2. **Shift**: Push the building reversed number one position to the left (multiply by 10) to make room for the new digit.
3. **Stack**: Add the extracted digit to the new position.

## 3. The Mathematical Pattern
The logic relies on two primary operations:
- **Digit Extraction**: `n % 10` gives the remainder when divided by 10, which is always the last digit.
- **Digit Removal**: `n / 10` (integer division) removes the last digit.
- **Number Building**: `(current_reversed * 10) + new_digit` shifts existing digits to the left.

## 4. Visual Trace Table (`n = 123`)

| Step | Current `n` | Extracted Digit (`n % 10`) | Building `reversed` | Next `n` (`n ~/ 10`) |
| :--- | :--- | :--- | :--- | :--- |
| **Start** | `123` | - | `0` | - |
| **1** | `123` | `3` | `(0 * 10) + 3 = 3` | `12` |
| **2** | `12` | `2` | `(3 * 10) + 2 = 32` | `1` |
| **3** | `1` | `1` | `(32 * 10) + 1 = 321` | `0` |

## 5. Summary of the Template
This is the "Extract-Reduce-Build" template:
```dart
while (n > 0) {
  int digit = n % 10;
  reversed = (reversed * 10) + digit;
  n = n ~/ 10;
}
```
This pattern is also used for Palindrome checks, Armstrong numbers, and digit summations.
