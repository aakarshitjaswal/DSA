import UIKit

/*
 Move all Zeros to the end of the array
 In this article we will learn how to solve the most asked coding interview problem: “Move all Zeros to the end of the array”
 Problem Statement: You are given an array of integers, your task is to move all the zeros in the array to the end of the array and move non-negative integers to the front by maintaining their order.
 Examples:
 Example 1:
 Input: 1 ,0 ,2 ,3 ,0 ,4 ,0 ,1
 Output: 1 ,2 ,3 ,4 ,1 ,0 ,0 ,0
 Explanation: All the zeros are moved to the end and non-negative integers are moved to front by maintaining order

 Example 2:
 Input: 1,2,0,1,0,4,0
 Output: 1,2,1,4,0,0,0
 Explanation: All the zeros are moved to the end and non-negative integers are moved to front by maintaining order
 */


func moveAllZerosToEndBRUTE(_ a: [Int]) -> [Int] {
    var result = [Int]()
    
    var j = 0
    
    for i in 0..<a.count {
        if a[i] == 0 {
            j = i
        }
        
        
    }
    
    return result
}
