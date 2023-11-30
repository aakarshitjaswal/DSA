import Foundation
/*
 Problem Statement: Given an array containing both positive and negative integers, we have to find the length of the longest subarray with the sum of all elements equal to zero.
 
 Example 1:
 Input Format: N = 6, array[] = {9, -3, 3, -1, 6, -5}
 
 Result: 5
 Explanation: The following subarrays sum to zero:
 {-3, 3} , {-1, 6, -5}, {-3, 3, -1, 6, -5}
 Since we require the length of the longest subarray, our answer is 5!

 Example 2:
 Input Format: N = 8, array[] = {6, -2, 2, -8, 1, 7, 4, -10}
 Result: 8
 Subarrays with sum 0 : {-2, 2}, {-8, 1, 7}, {-2, 2, -8, 1, 7}, {6, -2, 2, -8, 1, 7, 4, -10}
 Length of longest subarray = 8

 Example 3:
 Input Format: N = 3, array[] = {1, 0, -5}
 Result: 1
 Subarray : {0}
 Length of longest subarray = 1

 Example 4:
 Input Format: N = 5, array[] = {1, 3, -5, 6, -2}
 Result: 0
 Subarray: There is no subarray that sums to zero
 */

func longestZeroSumSubarrayBRUTE(_ a: [Int]) -> Int {
    var maxSoFar = 0
    
    for i in 0..<a.count {
        var sum = 0
        for j in i..<a.count {
            sum += a[j]
            print("Sum", sum)
            if sum == 0 {
                let maximum = (j - i) + 1
                print(maximum)
                maxSoFar = max(maximum, maxSoFar)
            }
        }
    }
    print(maxSoFar)
    return maxSoFar
}

var nums = [6, -2, 2, -8, 1, 7, 4, -10]

longestZeroSumSubarrayBRUTE(nums)

func longestZeroSumSubarrayOPTIMAL(_ a: [Int]) -> Int {
    
    var hash:[Int:Int] = [:]
    var maxSoFar = 0
    var sum = 0
    
    for i in 0..<a.count {
        sum += a[i]
        
        if sum == 0 {
            maxSoFar = max(maxSoFar, i + 1)
        } else if let prefixIndex = hash[sum] {
            maxSoFar = max(maxSoFar, i - prefixIndex)
        } else {
            hash[sum] = i
            print(hash)

        }
        
    }
    
    return maxSoFar
}

var nums1 = [6, -2, 2, -8, 1, 7, 4, -10]
var nums2 = [9, -3, 3, -1, 6, -5]
var nums3 = [1, 0, -5]
var nums4 = [1, 3, -5, 6, -2]
// [6, -2, 2, -8, 1, 7, 4, -10]
longestZeroSumSubarrayOPTIMAL(nums4)
