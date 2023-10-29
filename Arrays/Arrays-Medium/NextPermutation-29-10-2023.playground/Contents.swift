import Foundation

//There is not Brute approach because it takes O(N! * N) which is too long

//Optimal

func nextPermutation(_ a: [Int]) -> [Int] {
    var myArray = a
    var breakPoint = -1
    
    //Step 1, find the break point
    
    for i in stride(from: a.count - 1, through: 1, by: -1) {
        if a[i] > a[i - 1] {
            breakPoint = i
            //Step 2. Swap the smaller with greater
            myArray.swapAt(i, i - 1)
            break
        }
    }
    
    if breakPoint == -1 {
        return myArray.reversed()
    }
    //Step 3. sort the remainging
    myArray[breakPoint..<myArray.count].sort(by: <)
    return myArray
}

let A = [3,1,2,8]
let ans = nextPermutation(A)

print("The next permutation is: \(ans)")
