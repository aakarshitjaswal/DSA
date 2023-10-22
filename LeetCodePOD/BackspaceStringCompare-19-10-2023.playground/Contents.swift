import Foundation

/*
 Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.

  

 Example 1:

 Input: s = "ab#c", t = "ad#c"
 Output: true
 Explanation: Both s and t become "ac".

 Example 2:

 Input: s = "aab##", t = "c#d#"
 Output: true
 Explanation: Both s and t become "".

 Example 3:

 Input: s = "a#c", t = "b"
 Output: false
 Explanation: s becomes "c" while t becomes "b".

  

 Constraints:

     1 <= s.length, t.length <= 200
     s and t only contain lowercase letters and '#' characters.

  

 Follow up: Can you solve it in O(n) time and O(1) space?
*/


func backspaceStringCompare(_ s: String, _ t: String) -> Bool {
    var r1 = ""
    var r2 = ""
    
    for i in s {
        if i != "#" {
            r1.append(i)
        } else {
            r1.popLast()
        }
    }
    
    for i in t {
        if i != "#" {
            r2.append(i)
        } else {
            r2.popLast()
        }
    }
    
    return r1 == r2
}

backspaceStringCompare("ab##", "c#d#")

