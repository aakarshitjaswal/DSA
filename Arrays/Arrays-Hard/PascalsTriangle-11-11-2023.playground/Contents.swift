import Foundation

/* Three types of problems,
 
 1. Given the row & column, provide the element at that row and column,
 2. Print the nth row of the pascal trianlge
 3. Given n, print the entire triangle till nth row
 
 */

//First problem can be solved using NCR, where N is row - 1 and R is column - 1, the formula for NCR is N!/R! * (N - r)!, by the observation we get (N - r)! cancelling out with N! which makes the below optimal solution possible

func pascalsTriangleNCR(row: Int, column: Int) -> Int {
    
    let n = row - 1
    let r = column - 1
    
    
    var res = 1
    
    for i in 0..<r {
        res = res * ( n - i)
        res = res/(i + 1)
    }
    
    return res
}

pascalsTriangleNCR(row: 5, column: 3)



//Second Problem: By the observation of pascals triangle, we know that the nth row has n elements, we can also get the element in the column by calling ncr() method each time, but that would make it O(n*r) time complexity.
/*
 To solve in an optimal manner we have to observe the ncr on row, what each call of ncr is actually doing? If we say that the column is zero indexed, each call of ncr is adding a numerator and denominator to the multiplication and that numerator can be had by subtracting the zero based column from the row, and the denominator is just adding 1 to the previous.
 */

func pascalsTriangleNthRow(n: Int) -> [Int] {
    
    var res = 1
    var row = [1]
    
    for c in 1..<n {
        res = res * (n - c)
        res = res / c
        row.append(res)
    }
    
    return row
}

pascalsTriangleNthRow(n: 1)

//Third Problem: We can use the nth row function to get each row, and the time complexity will be O(N*N) because the nth row funciton has TC of N and we have to call it N times.

func generate(_ numRows: Int) -> [[Int]] {
    guard numRows != 0 else {
        return []
    }
    var res:[[Int]] = []
    
    for i in 1...numRows {
        res.append(pascalsTriangleNthRow(n: i))
    }
    
    
    func pascalsTriangleNthRow(n: Int) -> [Int] {
        
        var res = 1
        var row = [1]
        
        for c in 1..<n {
            res = res * (n - c)
            res = res / c
            row.append(res)
        }
        
        return row
    }
    
    return res
}

generate(5)
