import UIKit

/*
 Move all Zeros to the end of the array
 In this article we will learn how to solve the most asked coding interview problem: “Move all Zeros to the end of the array”
 Problem Statement: You are given an array of integers, your task is to move all the zeros in the array to the end of the array and move non-negative integers to the front by maintaining their order.
 Examples:
 Example 1:
 Input: 1 ,0 ,0,2 ,3 ,0 ,4 ,0 ,1
 Output: 1 ,2 ,3 ,4 ,1 ,0 ,0 ,0
 Explanation: All the zeros are moved to the end and non-negative integers are moved to front by maintaining order

 Example 2:
 Input: 1,2,0,1,0,4,0
 Output: 1,2,1,4,0,0,0
 Explanation: All the zeros are moved to the end and non-negative integers are moved to front by maintaining order
 */

func moveAllZerosToEndOPTIMAL(_ a:[Int]) -> [Int] {
    var j = 0
    var A = a
    
    for i in 0..<a.count {
        if A[i] == 0 && A[j] != 0 {
            j = i
        } else if A[i] != 0 && A[j] == 0 {
            A.swapAt(i, j)
            j += 1
        } else if A[i] != 0 && A[j] != 0 {
            j += 1
        }
    }
    return A
}

moveAllZerosToEndOPTIMAL([1,0,0,3,0,0,4,1,1,1])



func moveAllZerosToEndBRUTE(_ a: [Int]) -> [Int] {
    var result = [Int]()
    var A = a
    var zerosCount = 0
    
    for i in A {
        if i == 0 {
            zerosCount += 1
        } else {
            result.append(i)
        }
    }
    
    
    for i in 1...zerosCount {
        result.append(0)

    }
    
    return result
}


moveAllZerosToEndBRUTE([1 ,0 ,2 ,3 ,0 ,4 ,0 ,1])


