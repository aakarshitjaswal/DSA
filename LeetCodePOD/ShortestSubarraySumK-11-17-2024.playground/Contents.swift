import Foundation

/*
 Given an integer array nums and an integer k, return the length of the shortest non-empty subarray of nums with a sum of at least k. If there is no such subarray, return -1.

 A subarray is a contiguous part of an array.

  

 Example 1:

 Input: nums = [1], k = 1
 Output: 1
 Example 2:

 Input: nums = [1,2], k = 4
 Output: -1
 Example 3:

 Input: nums = [2,-1,2], k = 3
 Output: 3
  

 Constraints:

 1 <= nums.length <= 105
 -105 <= nums[i] <= 105
 1 <= k <= 109
 */

func shortestSubarrayWithSumAtLeastKBruteForce(_ nums: [Int], _ k: Int) -> Int {
    
    var subArraySum: Int = 0
    var subArrayLength: Int = 0
    var minSubArrayLengthSoFar: Int = Int.max
    
    
    if nums.isEmpty {
        return -1
    }
    
    for i in nums.indices {
        subArraySum = 0
        subArrayLength = 0
        for j in i..<nums.count {
            subArraySum = nums[i...j].reduce(0, +)
            subArrayLength = j - i + 1
            print(nums[i...j], "Sum:",subArraySum," Length:", subArrayLength)
            
            if subArraySum >= k && subArrayLength < minSubArrayLengthSoFar {
                minSubArrayLengthSoFar = subArrayLength
            }
        }
    }
    
    return minSubArrayLengthSoFar == Int.max ? -1 : minSubArrayLengthSoFar
}

shortestSubarrayWithSumAtLeastKBruteForce([48,99,37,4,-31], 140)

