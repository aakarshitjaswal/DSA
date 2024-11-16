import Foundation

/*
 You are given an array of integers `nums` of length `n` and a *positive* integer `k`.

 The **power** of an array is defined as:

 - Its **maximum** element if *all* of its elements are **consecutive** and **sorted** in **ascending** order.
 - 1 otherwise.

 You need to find the **power** of all subarrays of nums of size k.

 Return an integer array `results` of size `n - k + 1`, where `results[i]` is the *power* of `nums[i..(i + k - 1)]`.

 **Example 1:**

 **Input:** nums = `[1,2,3,4,3,2,5]`, k = 3

 **Output:** `[3,4,-1,-1,-1]`

 **Explanation:**

 There are 5 subarrays of `nums` of size 3:

 - `[1, 2, 3]` with the maximum element 3.
 - `[2, 3, 4]` with the maximum element 4.
 - `[3, 4, 3]` whose elements are **not** consecutive.
 - `[4, 3, 2]` whose elements are **not** sorted.
 - `[3, 2, 5]` whose elements are **not** consecutive.

 **Example 2:**

 **Input:** nums = `[2,2,2,2,2]`, k = 4

 **Output:** [-1,-1]

 **Example 3:**

 **Input:** nums = [3,2,3,2,3,2], k = 2

 **Output:** [-1,3,-1,3,-1]
 */
func findThePowerOfKSizeSubarray(_ nums: [Int], _ k: Int) -> [Int] {
    var streak = 0
    var result: [Int] = []
    
    for i in nums.indices {
        //Checking if the current element is consecutive and sorted in ascending order.
        if i > 0 && nums[i] == nums[i - 1] + 1 {
            streak += 1
        } else {
            streak = 1
        }
        
        //If current index is greater than or equal to k, appending to the result power of subarray else -1
        if i + 1 >= k {
            result.append(streak >= k ? nums[i] : -1)
        }
    }
    
    return result
}

findThePowerOfKSizeSubarray([1,2,3,4,3,2,5], 3)
