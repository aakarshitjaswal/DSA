import Foundation
/*
 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

  

 Example 1:


 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]
 
 
 Example 2:


 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
 */

func rotate(_ matrix: inout [[Int]]) {
    
    let original = matrix
    var k = 0
    
    for i in stride(from: matrix.count - 1, through: 0, by: -1) {
        for j in 0..<matrix[i].count {
            matrix[j][k] = original[i][j]
        }
        k += 1
    }
}

var matrix = [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

rotate(&matrix)
