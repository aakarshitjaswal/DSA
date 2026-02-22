import Foundation

func extractNumbers(_ n: Int) {
    var arr = [Int]()
    var currentN = n
    while currentN > 0 {
        let lastDigit = currentN % 10
        arr.append(lastDigit)
        currentN /= 10
    } 
    print(arr) 
} 

extractNumbers(12345)

