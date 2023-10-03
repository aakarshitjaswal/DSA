import Foundation

/*
 Given an array of integers nums, return the number of good pairs.

 A pair (i, j) is called good if nums[i] == nums[j] and i < j.
 
 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  

 Constraints:

 1 <= nums.length <= 100
 1 <= nums[i] <= 100
 */


func numIdenticalPairsBRUTE(_ nums: [Int]) -> Int {
    var hash: [Int:[Int]] = [:]
    var pairs: [[Int]] = []
    
    for i in 0..<nums.count {
        hash[nums[i], default: []].append(i)
    }
    
    for i in hash {
        var a = i.value
        var j = 0
        
        if a.count >= 2 {
            while j < a.count {
                var k = j + 1
                while k < a.count {
                    pairs.append([a[j], a[k]])
                    k += 1
                }
                j += 1
            }
        }
    }

    return pairs.count
}

numIdenticalPairsBRUTE([1,2,3,1,1,3])


func numIdenticalPairsBETTER(_ nums: [Int]) -> Int {
    var pairs = 0
    
    for i in 0..<(nums.count - 1) {
        for j in i + 1..<nums.count {
            if nums[i] == nums[j] {
                pairs += 1
            }
        }
    }
    
    return pairs
}



numIdenticalPairsBETTER([1,2,3,1,1,3])
