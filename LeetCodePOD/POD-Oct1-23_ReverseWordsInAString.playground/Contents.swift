import Foundation

/*
 Example 1:

 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Example 2:

 Input: s = "God Ding"
 Output: "doG gniD"
 */


var myString = "Let's take LeetCode contest"

//Brute Force - Time limit exceeded 
func reverseWordsBRUTE(_ s: String) -> String {
    var S = s + " "
    var output = ""
    var firstIndex = 0
    var lastIndex = 0
    for i in S {
        if i != " " {
            lastIndex += 1
        } else {
            for i in stride(from: lastIndex, through: firstIndex, by: -1) {
                output.append(S[S.index(S.startIndex, offsetBy: i)])
            }
            lastIndex += 1
            firstIndex = lastIndex
        }
    }
    output.removeFirst()
    return output
}

reverseWordsBRUTE(myString)

//Optimal

func reverseWordsOPTIMAL(_ s: String) -> String {
    var result = ""
    var carry = ""
    
    s.forEach { c in
        if c != " " {
            carry = String(c) + carry
        } else {
            result.append(carry + " ")
            carry = ""
        }
    }
    
    return result + carry
}

reverseWordsOPTIMAL(myString)
