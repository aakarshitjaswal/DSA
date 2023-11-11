import Foundation

/*
 Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

 A subarray is a contiguous non-empty sequence of elements within an array.

  

 Example 1:

 Input: nums = [1,1,1], k = 2
 Output: 2
 Example 2:

 Input: nums = [1,2,3], k = 3
 Output: 2
  

 Constraints:

 1 <= nums.length <= 2 * 104
 -1000 <= nums[i] <= 1000
 -107 <= k <= 107
 */

//Optimal
func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var prefixSums: [Int: Int] = [0: 1]
    var count = 0
    var sum = 0
    
    for num in nums {
        sum += num
        count += prefixSums[sum - k, default: 0]
        prefixSums[sum, default: 0] += 1
    }
    return count
}


//Brute
func subarraySumBRUTE(_ nums: [Int], _ k: Int) -> Int {
    var sum = 0
    var count = 0
    for i in 0..<nums.count {
        sum = 0
        for j in i..<nums.count {
            sum += nums[j]
            
            if sum == k {
                count += 1
            }
        }
    }
    
    return count
}

subarraySumBRUTE(subarray3, 3)
