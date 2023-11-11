import Foundation

/*
 Given an m x n matrix, return all elements of the matrix in spiral order.

  

 Example 1:


 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [1,2,3,6,9,8,7,4,5]
 Example 2:



  

 Constraints:

 m == matrix.length
 n == matrix[i].length
 1 <= m, n <= 10
 -100 <= matrix[i][j] <= 100
 */

// Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
// Output: [1,2,3,6,9,8,7,4,5]

//Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
//Output: [1,2,3,4,8,12,11,10,9,5,6,7]


func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    var mn = matrix.count * matrix[0].count
    var b = matrix.count - 1
    var t = 0
    var r = matrix[0].count - 1
    var l = 0
    
    while result.count < mn {
        
        //left to right
        if result.count < mn {
            for i in l...r {
                result.append(matrix[t][i])
            }
        }
        t += 1

        //top to bottom
        if result.count < mn {
            for i in t...b {
                result.append(matrix[i][r])
            }
        }
        
        r -= 1
        //right to left
        if result.count < mn {
            for i in stride(from: r, through: l, by: -1) {
                result.append(matrix[b][i])
            }
        }

        b -= 1
        
        //bottom to top
        if result.count < mn {
            for i in stride(from: b, through: t, by: -1) {
                
                result.append(matrix[i][l])
            }
        }
        l += 1
    }
    
    
    return result
    
}

let matrix = [[1,2,3],[4,5,6],[7,8,9]]
let matrix2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
spiralOrder(matrix2)
