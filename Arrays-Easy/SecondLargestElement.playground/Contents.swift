import UIKit

// Second Largest Element in an Array
//Brute
var arr1 = [-3,-8,-19,-2,-10]
func secondLargestElBRUTE(_ a: [Int]) -> Int {
    
    var largest = Int.min
    var secondLargest = Int.min
    
    for i in a {
        if i > largest {
            largest = i
        }
    }
    
    for i in a {
        if i > secondLargest && i < largest {
            secondLargest = i
        }
    }

    return secondLargest
}

secondLargestElBRUTE(arr1)

//Optimal
// var arr = [-3,-8,-19,-2,-10]

var arrOpti = [5,4,7,4,1]

func secondLargestElOPTI(_ a:[Int]) -> Int {
    
    var largest = Int.min
    var secondLargest = Int.min
    
    for i in a {
        if i > largest {
            secondLargest = largest
            largest = i
        } else if i < largest && i > secondLargest {
            secondLargest = i
        }
    }
    
    if secondLargest == Int.min {
        return -1
    }
    return secondLargest
}

secondLargestElOPTI(arrOpti)

//Striver's Optimal Solution
func secondSmallest(_ arr: [Int]) -> Int {
    let n = arr.count
    if n < 2 {
        return -1
    }
    var small = Int.max
    var secondSmall = Int.max
    
    for i in 0..<n {
        if arr[i] < small {
            secondSmall = small
            small = arr[i]
        } else if arr[i] < secondSmall && arr[i] != small {
            secondSmall = arr[i]
        }
    }
    
    return secondSmall
}

func secondLargest(_ arr: [Int]) -> Int {
    let n = arr.count
    if n < 2 {
        return -1
    }
    var large = Int.min
    var secondLarge = Int.min
    
    for i in 0..<n {
        if arr[i] > large {
            secondLarge = large
            large = arr[i]
        } else if arr[i] > secondLarge && arr[i] != large {
            secondLarge = arr[i]
        }
    }
    
    return secondLarge
}

let arr = [5, 5, 5, 5, 5]
let sS = secondSmallest(arr)
let sL = secondLargest(arr)
print("Second smallest is", sS)
print("Second largest is", sL)



//[3,5,1,4,9,3,3,9,8]


func secondLargestElement(a: [Int]) -> Int {
    var largest = Int.min
    var secondLargest = Int.min
    
    for i in 0..<a.count {
        if a[i] > largest {
            secondLargest = largest
            largest = a[i]
            
        }
        
        //Checking if the last element is second largest
        if a[i] > secondLargest && a[i] < largest {
            secondLargest = a[i]
        }
    }
    
    return secondLargest
}

secondLargestElement(a: [8,3,5,0,1,4,9,3,3,9])

































