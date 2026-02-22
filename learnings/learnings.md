# Language Comparisons: Extract Numbers (DSA)

A summary of differences between C++, Dart, Python, Swift, and TypeScript discovered while implementing the "Extract Numbers" problem.

## 1. Division vs. Integer Division
How to divide by 10 and get a whole number (truncate the decimal).

| Language | Operator | Notes |
| :--- | :--- | :--- |
| **C++** | `/` | Performs integer division if both operands are `int`. |
| **Dart** | `~/` | `~/` is the truncate division operator. Single `/` always returns a `double`. |
| **Python** | `//` | Called "Floor Division". Single `/` always returns a float. |
| **Swift** | `/` | Context-aware. If both are `Int`, it returns an `Int`. |
| **TypeScript** | `Math.floor(x / y)` | Since all numbers are floating point, you must manually floor it. |

## 2. Dynamic Arrays (Lists)
How to store digits dynamically.

| Language | Type | Adding Element |
| :--- | :--- | :--- |
| **C++** | `std::vector<int>` | `arr.push_back(val)` |
| **Dart** | `List<int>` | `arr.add(val)` |
| **Python** | `list` | `arr.append(val)` |
| **Swift** | `[Int]` | `arr.append(val)` |
| **TypeScript** | `Array<number>` | `arr.push(val)` |

## 3. Parameter Mutability
Can you modify the variable `n` passed into the function?

*   **C++**: Yes. It is a local copy (pass-by-value).
*   **Swift**: **No**. Parameters are constants (`let`). You must create a mutable copy: `var currentN = n`.
*   **Python/Dart/TS**: Yes, you can reassign the local name.

## 4. Entry Points & Running
| Language | Execution Command | Entry Point |
| :--- | :--- | :--- |
| **C++** | `g++ file.cpp -o out && ./out` | `int main() { ... }` |
| **Dart** | `dart file.dart` | `void main() { ... }` |
| **Python** | `python3 file.py` | `if __name__ == "__main__":` |
| **Swift** | `swift file.swift` | Script style |
| **TypeScript** | `npx ts-node --compiler-options '{"module": "commonjs"}' file.ts` | Script style |

## 5. Shorthand Assignment
*   **C++ / Swift / TS**: `n /= 10`
*   **Python**: `n //= 10`
*   **Dart**: `n ~/= 10`
