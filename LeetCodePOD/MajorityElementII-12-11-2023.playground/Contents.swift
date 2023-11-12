import Foundation

/*
 Example 1:
 Input Format: N = 5, array[] = {1,2,2,3,2}
 Result: 2
 Explanation: Here we can see that the Count(1) = 1, Count(2) = 3 and Count(3) = 1.Therefore, the count of 2 is greater than N/3 times. Hence, 2 is the answer.

 Example 2:
 Input Format:  N = 6, array[] = {11,33,33,11,33,11}
 Result: 11 33
 Explanation: Here we can see that the Count(11) = 3 and Count(33) = 3. Therefore, the count of both 11 and 33 is greater than N/3 times. Hence, 11 and 33 is the answer.

 */

//BRUTE FORCE
func majorityElement(_ nums: [Int]) -> [Int] {
    
    let nby3 = nums.count / 3
    
    var map: [Int:Int] = [:]
    
    var array:[Int] = []
    
    for i in nums {
            map[i, default: 0] += 1
    }
    
    for i in map {
        if i.value > nby3 {
            array.append(i.key)
        }
    }
    
    return array
}

majorityElement([11,33,33,11,33,11])
