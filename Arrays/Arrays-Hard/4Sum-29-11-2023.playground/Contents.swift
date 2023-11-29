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
//Input: nums = [1,0,-1,0,-2,2], target = 0



func fourSumOptimal(_ nums: [Int], _ target: Int) -> [[Int]] {
    
    var a = nums.sorted()
    var result: [[Int]] = []
    
    for i in 0..<a.count {
        if i > 0 && a[i] == a[i - 1] { continue }
        for j in i+1..<a.count {
            if j > i + 1 && a[j] == a[j - 1] { continue }
            var k = j + 1
            var l = a.count - 1

            while k < l {

                let sum = a[i] + a[j] + a[k] + a[l]
                

                if sum == target {
                    let quad = [a[i], a[j], a[k], a[l]]
                    result.append(quad)
                    
                    k += 1
                    l -= 1
                    
                    while k < l && a[k] == a[k - 1] { k += 1}
                    while k < l && a[l] == a[l + 1] { l -= 1}


                } else if sum < target {
                    k += 1
                } else  {
                    l -= 1
                }
            }
            
        }
    }
    return result
}

let twos = [2,2,2,2,2]
fourSumOptimal(twos, 8)


