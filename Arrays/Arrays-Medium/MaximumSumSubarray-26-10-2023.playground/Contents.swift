import Foundation

/*
 Given an integer array nums, find the
 subarray
  with the largest sum, and return its sum.

  

 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 
 
 Example 2:

 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.
 
 
 Example 3:

 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
  

 Constraints:

 1 <= nums.length <= 105
 -104 <= nums[i] <= 104
 */

//BRUTE FORCE

func maxSubArrayBRUTE(_ nums: [Int]) -> Int {
    var maxSoFar = Int.min
    
    for i in 0..<nums.count {
        
        var max = 0
        
        for j in i..<nums.count {
            
            max += nums[j]
            
            if max > maxSoFar {
                maxSoFar = max
            }
        }
    }
    
    return maxSoFar
}

maxSubArray([-1])


//OPTIMAL

func maxSubArray(_ nums: [Int]) -> Int {
    var maxSoFar = Int.min
    var max = 0
    
    for i in 0..<nums.count {
        max += nums[i]
        
        if max > maxSoFar {
            maxSoFar = max
        }
        
        if max < 0 {
            max = 0
        }
    }
    
    return maxSoFar
}

maxSubArray([-1,1, -3])
