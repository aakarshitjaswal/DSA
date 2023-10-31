import Foundation

/*
 Leaders in an array
 
 Provided an array, we have to return all of the elements to the left of which all the elements are smaller.
 
 
 */

//====================================
//Brute
//====================================
func leadersInAnArrayBrute(_ a: [Int]) -> [Int] {
    var leaders = [Int]()
    for i in 0..<a.count {
        var leader = true
        for j in i + 1..<a.count {
            if a[i] < a[j] {
                leader = false
                break
            }
        }
        if leader == true {
            leaders.append(a[i])
        }
    }
    return leaders
}

let myArray = [2,22,11,8,3,6,7,21,4]
leadersInAnArrayBrute(myArray)


//====================================
//Optimal
//====================================


func leadersInAnArrayOptimal(_ a: [Int]) -> [Int] {
    var leaders = [Int]()
    var lead = Int.min
    
    for i in stride(from: a.count - 1, through: 0, by: -1) {
        if  a[i] > lead {
            lead = a[i]
            leaders.append(a[i])
        }
    }
    
    return leaders
}

//let myArray = [2,22,11,8,3,6,7,21,4]
//leadersInAnArrayOptimal(myArray)
