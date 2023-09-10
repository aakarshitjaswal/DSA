import UIKit

/*
 Example 1:
 Input:
 A: [1 2 3 3 4 5 6]
 , B: [3 3 5]
 Output: 3,3,5
 */

func intersectionBRUTE(_ a: [Int], _ b: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in a {
        for j in b {
            if i == j {
                result.append(i)
                break
            }
        }
    }
    
    return result
}

intersectionBRUTE([1 ,2 ,3, 3, 4, 5, 6], [3, 3, 5])

func intersectionOPTIMAL(_ a: [Int], _ b: [Int]) -> [Int] {
    var result = [Int]()
    	
    var i = 0
    var j = 0
    
    while i < a.count && j < b.count {
        
        if a[i] == b[j] {
            result.append(a[i])
            i += 1
            j += 1
        } else if a[i] < b[j] {
            i += 1
        } else {
            j += 1
        }
        
    }
    
    return result
}

intersectionOPTIMAL([1, 2, 3, 3, 4, 5, 6]
                    , [3, 5])
