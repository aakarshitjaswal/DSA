import UIKit

//Find the largest element in an Array
//BRUTE

func largestElementInBRUTE(_ a: [Int]) -> Int {
    var largest = Int.min

    for i in a {
        if i > largest {
            largest = i
        }
    }
    
    return largest
}

largestElementInBRUTE([-3,-5,-8,-9,-19,-7])

