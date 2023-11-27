import Foundation

/*
 Example 1:
 
 Input: nums = [-1,0,1,2,-1,-4]
 
 Output: [[-1,-1,2],[-1,0,1]]
 
 Explanation: Out of all possible unique triplets possible, [-1,-1,2] and [-1,0,1] satisfy the condition of summing up to zero with i!=j!=k
 
 Example 2:
 
 Input: nums=[-1,0,1,0]
 Output: Output: [[-1,0,1],[-1,1,0]]
 Explanation: Out of all possible unique triplets possible, [-1,0,1] and [-1,1,0] satisfy the condition of summing up to zero with i!=j!=k
 */


//BRUTE FORCE

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var result: [[Int]] = []
    
    for i in 0..<nums.count {
        
        for j in i + 1..<nums.count {
            
            for k in j + 1..<nums.count {
                
                if nums[i] + nums[j] + nums[k] == 0 {
                    
                    let triplet = [nums[i], nums[j], nums[k]].sorted()
                    if !result.contains(triplet) {
                        result.append(triplet)
                    }
                }
            }
            
        }
        
    }
    
    return result
    
}
