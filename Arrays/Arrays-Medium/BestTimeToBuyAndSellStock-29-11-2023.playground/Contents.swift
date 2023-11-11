import Foundation

//Buy and Sell Stock



//===============================
//Brute
//===============================
func buyAndSellStockBrute(_ arr: [Int]) -> Int {
    var maxPro = 0
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if arr[j] > arr[i] {
                maxPro = max(arr[j]-arr[i], maxPro)
            }
        }
    }
    return maxPro
}



//===============================
//Optimal
//===============================

var arr = [7, 1, 5, 3, 6, 4]

func buyStockOptimal(_ a: [Int]) -> Int {
    var maxProfit = 0
    var buyPrice = a[0]

    for i in 1..<a.count {
        
        if a[i] - buyPrice > maxProfit {
            maxProfit = a[i] - buyPrice
        }
        
        if a[i] < buyPrice {
            buyPrice = a[i]
        }
    }
    return maxProfit
}

buyStockOptimal(arr)
/*
 TC -> O(N)
 */
