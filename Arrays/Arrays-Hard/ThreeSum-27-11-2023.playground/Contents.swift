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

func threeSumBRUTE(_ nums: [Int]) -> [[Int]] {
    
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

//BETTER - Hashing

func threeSumBETTER(_ nums: [Int]) -> [[Int]] {
    
    var result: [[Int]] = []
    
    var hash: [Int: Int] = [:]
    
    
    for i in 0..<nums.count {
        hash = [:]
        
        for j in i + 1..<nums.count {
            
            let numAtK = -(nums[i] + nums[j])
            
            if let k = hash[numAtK] {
                let triplet = [nums[i], nums[j], nums[k]].sorted()
                if !result.contains(triplet) {
                    result.append(triplet)
                }
            } else {
                if j != nums.count - 1 {
                    hash[nums[j]] = j
                }
            }
        }
        
    }
    
    return result
    
}

//OPTIMAL

func threeSumOPTIMAL(_ nums: [Int]) -> [[Int]] {
    
    var result: [[Int]] = []
    var a = nums.sorted()
    
    var i = 0

    
    var prevI = a[i]

    for i in 0..<a.count {
        
        if(i > 0 && a[i] == a[i - 1]) { continue }
        
        var j = i + 1
        var k = nums.count - 1
        
        while j < k {
            
            let sum = a[i] + a[j] + a[k]

            if sum == 0 {
                result.append([a[i], a[j], a[k]])
                j += 1
                k -= 1
                
                while(j < k && a[j] == a[j-1]) { j += 1}
                while(j < k && a[k] == a[k+1]) { k -= 1}
            
            } else if sum > 0 {
                
                k -= 1
     
            } else {
                
                j += 1
                
            }
        }
    }
    
    print(result)
    return result
    
}

threeSumOPTIMAL([-1,0,1,2,-1,-4])

