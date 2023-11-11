import Foundation

/*
Examples 1:

Input: matrix=[[1,1,1],[1,0,1],[1,1,1]]

Output: [[1,0,1],[0,0,0],[1,0,1]]

Explanation: Since matrix[2][2]=0.Therfore the 2nd column and 2nd row wil be set to 0.
 
Input: matrix=[[0,1,2,0],[3,4,5,2],[1,3,1,5]]

Output:[[0,0,0,0],[0,4,5,0],[0,3,1,0]]

Explanation:Since matrix[0][0]=0 and matrix[0][3]=0. Therefore 1st row, 1st column and 4th column will be set to 0
*/

func setZeroes(_ matrix: inout [[Int]]) {
    var indices: [[Int]] = []
    
    //Getting all the indices to be zeroed
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count {
            if matrix[i][j] == 0 {
                indices.append([i,j])
            }
        }
    }
    
    for i in 0..<indices.count {
        //Setting the row 0
        for j in 0..<matrix[0].count {
            matrix[indices[i][0]][j] = 0
        }
        //Setting the column 0
        for k in 0..<matrix.count {
            matrix[k][indices[i][1]] = 0
        }
    }
}

var matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]

setZeroes(&matrix)


