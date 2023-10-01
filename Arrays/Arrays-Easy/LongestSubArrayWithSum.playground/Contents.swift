import Foundation

/*
 Example 1:
 Input Format: N = 3, k = 5, array[] = {2,3,5}
 Result: 2
 Explanation: The longest subarray with sum 5 is {2, 3}. And its length is 2.

 Example 2:
 Input Format: N = 5, k = 10, array[] = {2,3,5,1,9}
 Result: 3
 Explanation: The longest subarray with sum 10 is {2, 3, 5}. And its length is 3.
 */

func longestSubArrayWithSumKBRUTE(_ a: [Int], _ N: Int) -> Int {
    var sum = 0
    var count = 0
    var maxCount = 0
    
    for i in 0..<a.count {
        if sum < N {
            sum += a[i]
            count += 1
        } else {
            maxCount = max(count, maxCount)
            count = 1
            sum = a[i]
        }
        
    }

    return maxCount
}

longestSubArrayWithSumKBRUTE([2,3,5], 5)
