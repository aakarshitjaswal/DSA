import Foundation

/*
Example 1:
Input: N = 7, array[] = {1,2,3,4,5,6,7} , k=2 , right
Output: 6 7 1 2 3 4 5
Explanation: array is rotated to right by 2 position .

Example 2:
Input: N = 6, array[] = {3,7,8,9,10,11} , k=3 , left
Output: 9 10 11 3 7 8
Explanation: Array is rotated to right by 3 position.
*/


func rotateArrayByDPlaces(_ a:[Int], _ k:Int, _ direction:String) -> [Int]{
    var result = [Int]()
    
    if direction == "right" {
        let breakIndex = a.count - k

        for i in breakIndex..<a.count {
            result.append(a[i])
        }
        
        for i in 0..<breakIndex {
            result.append(a[i])
        }
    } else {
        let breakIndex = k
        for i in breakIndex..<k {
            
        }
    }

    
    return result
}
