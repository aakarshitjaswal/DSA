import Foundation

/*
Hint
- loop through all possible substrings
- check if any is a palindrome, keep track of the longest one

note
- Swift string.count is O(n). You can easily get "time exceeded" error if not careful.
Why #Swift string.count is O(n):
“characters in Swift don’t each take up the same amount of memory within a string’s representation. As a result, the number of characters in a string can’t be calculated without iterating through the string”

https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
*/


//PROBLEM
/*
 Given a string s, return the longest
 palindromic
  
 substring
  in s.

  

 Example 1:

 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.
 
 Example 2:

 Input: s = "cbbd"
 Output: "bb"
  

 Constraints:

 1 <= s.length <= 1000
 s consist of only digits and English letters.
 */

//ACCEPTED
func longestPalindrome(_ s: String) -> String {
    var candidate: ArraySlice<Character> = []

    let array = Array(s)

    for i in (1...array.count).reversed() {
        let cutFront = array.suffix(i)

        for j in 1...i {
            let substring = cutFront.prefix(j)

            if isPalindrome(substring) {
                if substring.count > candidate.count {
                    candidate = substring
                }
            }
        }
    }

    return String(candidate)
}

func isPalindrome(_ s: ArraySlice<Character>) -> Bool {
    var pointerL: Int = s.startIndex
    var pointerR: Int = s.endIndex - 1

    while pointerL < pointerR {
      if s[pointerL] != s[pointerR] {
            return false
        }
        pointerL += 1
        pointerR -= 1
    }
    return true
}

longestPalindrome("babad")
