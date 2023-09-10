import UIKit

/*
 Rotate array by K elements
 Problem Statement: Given an array of integers, rotating array of elements by k elements either left or right.
 Examples:
 Example 1:
 Input: N = 7, array[] = {1,2,3,4,5,6,7} , k=2 , right
 Output: 6 7 1 2 3 4 5
 Explanation: array is rotated to right by 2 position .

 Example 2:
 Input: N = 6, array[] = {3,7,8,9,10,11} , k=3 , left
 Output: 9 10 11 3 7 8
 Explanation: Array is rotated to right by 3 position.
 */

//TC O(N), SC O(N)

enum Direction {
    case left
    case right
}

func rotateByKEls(_ a:[Int], _ k: Int, _ direction: Direction) -> [Int] {
    let N = a.count
    let n = k % N
    var result = [Int]()
    
    
    if direction == .right {
        for i in (N - n)..<N {
            result.append(a[i])
        }
        
        for i in 0..<(N - n) {
            result.append(a[i])
        }
    } else {
        for i in n..<N {
            result.append(a[i])
        }
        
        for i in 0..<n {
            result.append(a[i])
        }
    }
    
    return result
}

rotateByKEls([1,2,3,4,5,6,7], 9, .left)

//Reverse Algorithm
//[1,2,3,4,5,6,7]  k = 2  left

func rotateByKElsReverseAlgo(_ a: [Int], _ k: Int) -> [Int]{
    //Only rotates to left so far, will work on direction
    
    let N = a.count
    let n = k % N
    
    var A = a

    let kReversed = ((N-n)...N-1)
    let remainingReversed = (0...(N - 1 - n))
    A[kReversed].reverse()
    A[remainingReversed].reverse()
    A.reverse()
    return A
    
}

rotateByKElsReverseAlgo([1,2,3,4,5,6,7], 8)


func rotateArrayByKElements(a: [Int], k: Int, direction: Direction) -> [Int] {
    let N = a.count
    let K = k % N
    var result = [Int]()
    var breakIndex = 0
    
    if direction == .right {
        breakIndex = N - K
    } else {
        breakIndex = K
    }
    
    
    for i in breakIndex..<a.count {
        result.append(a[i])
    }
    for i in 0..<breakIndex {
        result.append(a[i])
    }
    
    return result
    
}

rotateArrayByKElements(a: [3,7,8,9,10,11,12], k: 11, direction: .left)

//Another way to do it

func rotateArrayByKElements2(a: [Int], k: Int, direction: Direction) -> [Int] {
    let N = a.count
    let K = k % N
    var result = [Int]()
    var breakIndex = 0
    
    if direction == .right {
        breakIndex = N - K
    } else {
        breakIndex = K
    }
    
    
    for i in breakIndex..<a.count {
        result.append(a[i])
    }
    for i in 0..<breakIndex {
        result.append(a[i])
    }
    
    return result
    
}

rotateArrayByKElements2(a: [3,7,8,9,10,11,12], k: 11, direction: .left)




























