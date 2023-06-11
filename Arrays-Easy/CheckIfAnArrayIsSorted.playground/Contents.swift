import UIKit

//Check if an array is sorted
//Brute

var arr1 = [1,2,3,4,5]

func checkIfSorted(_ a: [Int]) -> Bool {
    
    for i in 1..<a.count {
        if a[i] < a[i-1] {
            return false
        }
    }
    
    return true
}

checkIfSorted(arr1)
