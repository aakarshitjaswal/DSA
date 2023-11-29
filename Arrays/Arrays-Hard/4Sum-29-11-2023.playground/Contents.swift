import Foundation

    /*
     Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

         0 <= a, b, c, d < n
         a, b, c, and d are distinct.
         nums[a] + nums[b] + nums[c] + nums[d] == target

     You may return the answer in any order.

      

     Example 1:

     Input: nums = [1,0,-1,0,-2,2], target = 0
     Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

     Example 2:

     Input: nums = [2,2,2,2,2], target = 8
     Output: [[2,2,2,2]]

     */


//BRUTE FORCE
func fourSumBRUTE(_ nums: [Int], _ target: Int) -> [[Int]] {
        
    var set: Set<[Int]> = []
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                for l in k+1..<nums.count {
                    let sum = nums[i] + nums[j] + nums[k] + nums[l]
                    if sum == target {
                        let quad = [nums[i], nums[j], nums[k], nums[l]].sorted()
                        set.insert(quad)
                    }
                }
            }
        }
    }
        
    print(set)
    return Array(set)
}

let nums = [1,0,-1,0,-2,2]
fourSumBRUTE(nums, 0)

//BETTER
func fourSumBETTER(_ nums: [Int], _ target: Int) -> [[Int]] {
    var set: Set<[Int]> = []
    var hash: [Int:Int] = [:]
    
    for i in 0..<nums.count {
        hash = [:]
        for j in i+1..<nums.count {
            hash = [:]
            for k in j+1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                
                if let l = hash[target - sum] {
                    let quad = [nums[i],nums[j],nums[k],nums[l]].sorted()
                    set.insert(quad)
                } else {
                    hash[nums[k]] = k
                }
                
            }
        }
    }
    
    print(set)
    return Array(set)
}

fourSumBETTER(nums, 0)

//OPTIMAL

func fourSumOptimal(_ nums: [Int], _ target: Int) -> [[Int]] {
    
    var a = nums.sorted()
    var result: [[Int]] = []
    
    for i in 0..<a.count {
        for j in i+1..<a.count {
            for k in j+1..<a.count {
                
            }
        }
        
    }
    
    return result
}

