import Foundation

/*
 Example 1:
 Input Format: N = 3, nums[] = {3,2,3}
 Result: 3
 Explanation: When we just count the occurrences of each number and compare with half of the size of the array, you will get 3 for the above solution.

 Example 2:
 Input Format:  N = 7, nums[] = {2,2,1,1,1,2,2}

 Result: 2

 Explanation: After counting the number of times each element appears and comparing it with half of array size, we get 2 as result.

 Example 3:
 Input Format:  N = 10, nums[] = {4,4,4,4,4,2,3,3,2,4}

 Result: 4
 */


// Solving by O(N) Time Complexity using Moore's Voting algorithm.
func majorityElement(_ a: [Int]) -> Int {
    
    //Morre's Voting Algorithm
    var count = 0
    var assumption = a[0]
    
    for i in 0..<a.count {
        if count == 0 {
            assumption = a[i]
        }
        
        if a[i] == assumption {
            count += 1
        } else {
            count -= 1
        }
    }
    
    //Checking if the assumption is the greatest element
    count = 0
    
    for i in 0..<a.count {
        if a[i] == assumption {
            count += 1
        }
    }

    return count > (a.count / 2) ? assumption :  -1
}


majorityElement([4,4,2,4,3,4,4,3,2,4])
