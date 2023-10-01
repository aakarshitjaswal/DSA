import Foundation


/*
 Example 1:
 Input Format: N = 5, array[] = {1,2,4,5}
 Result: 3
 Explanation: In the given array, number 3 is missing. So, 3 is the answer.

 Example 2:
 Input Format: N = 3, array[] = {1,3}
 Result: 2
 Explanation: In the given array, number 2 is missing. So, 2 is the answer.
 */


func findTheMissingNumber(a: [Int]) -> Int {
    
    for i in 0..<a.count - 1 {
        if a[i + 1] != a[i] + 1 {
            return a[i] + 1
        }
    }
    
    return -1
}

findTheMissingNumber(a: [1,3])


func missingNumberBetter(_ a: [Int], _ N: Int) -> Int {

    var hash = Array(repeating: 0, count: N + 1) //hash array

    // storing the frequencies:
    for i in 0..<N-1 {
        hash[a[i]] += 1
    }
    
    print(hash)

    //checking the freqencies for numbers 1 to N:
    for i in 1...N {
        if hash[i] == 0 {
            return i
        }
    }

    // The following line will never execute.
    // It is just to avoid warnings.
    return -1
}

missingNumberBetter([1,2,3,4], 5)
