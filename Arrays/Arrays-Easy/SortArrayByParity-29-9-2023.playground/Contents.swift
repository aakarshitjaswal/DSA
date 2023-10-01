import Foundation


func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var myNums = nums
    
    var j = 0 // odd
    var i = 0 // even
    
    while i < myNums.count && j < myNums.count {
        if myNums[i] % 2 == 0 && myNums[j] % 2 != 0 {
            myNums.swapAt(i, j)
            j += 1
            i += 1
        } else if myNums[i] % 2 != 0 && myNums[j] == 0{
            i += 1
            j += 1
        } else if myNums[i] % 2 != 0 && myNums[j] % 2 != 0 {
            i += 1
        } else if myNums[i] % 2 == 0 && myNums[j] % 2 == 0 {
            j += 1
            i += 1
        }
    }
    return myNums
}


sortArrayByParity([3,1,2,4])
