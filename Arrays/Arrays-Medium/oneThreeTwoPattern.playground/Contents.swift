import Foundation

/*
 Example 1:

 Input: nums = [1,2,3,4]
 Output: false
 Explanation: There is no 132 pattern in the sequence.
 Example 2:

 Input: nums = [3,1,4,2]
 Output: true
 Explanation: There is a 132 pattern in the sequence: [1, 4, 2].
 Example 3:

 Input: nums = [-1,3,2,0]
 Output: true
 Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].
 */
func find132patternBRUTE(_ nums: [Int]) -> Bool {
    
    guard nums.count > 2 else {return false}
    
    for i in 0..<(nums.count - 2) {
        if nums[i + 1] == nums[i] {
            continue
        }
        print("i ->",nums[i])
        for j in (i+1)..<(nums.count - 1) {
            if nums[j + 1] == nums[j] {
                continue
            }
            print("j ->",nums[j])
            
            
            for k in (j+1)..<nums.count - 1 {
                if nums[k] == nums[k + 1] {
                    print("k == k + 1", nums[k])
                    continue
                }
                print("k ->",nums[k])
                if nums[i] < nums[j] && nums[i] < nums[k] && nums[k] < nums[j] {
                    return true
                }
            }
        }
    }
    	
    return false
}

find132patternBRUTE([3,1,4,2])

