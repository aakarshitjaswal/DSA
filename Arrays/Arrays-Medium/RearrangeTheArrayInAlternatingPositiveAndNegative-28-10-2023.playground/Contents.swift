import Foundation

//Rearrange array elements by sign

/*
 Given
 Equal negative and positive elements
 N/2 negative and N/2 positive elements
 [3,1,-2,-5,2,-4]
 Given in any random order
 Task is to rearrange by sign: First positive, negative, positive, negative...
 [3,1,2]
 [3, ,1, ,2, ]
 Order has to be maintained
 Result: [3, -2, 1, -5, 2, -4]
 */

//Brute
/*
 pos = [3, 1, 2]
 neg = [-2,-5,-4]
 all the positive elements are at even indices
 all the negative elements are at odd indices
 */

func rearrangeElements(_ a: [Int]) -> [Int] {
    var arr = Array(repeating: 0, count: a.count)
    
    var pos = [Int]()
    var neg = [Int]()
    
    for i in 0..<a.count {
        if a[i] < 0 {
            neg.append(a[i])
        } else {
            pos.append(a[i])
        }
    }

    //If positives are more
    if pos.count > neg.count {
        for i in 0..<neg.count {
                arr[i * 2] = pos[i]
                arr[i * 2 + 1] = neg[i]
            }
        
        var index = neg.count * 2
        for i in neg.count..<pos.count {
            arr[index] = pos[i]
            index += 1
        }
        
    //If negatives are more
    } else if pos.count < neg.count {
        for i in 0..<pos.count {
                arr[i * 2] = pos[i]
                arr[i * 2 + 1] = neg[i]
            }
        
        var index = pos.count * 2
        for i in pos.count..<neg.count {
            arr[index] = neg[i]
            index += 1
        }
    //If equal counts of both
    } else {
        for i in 0..<pos.count {
                arr[i * 2] = pos[i]
                arr[i * 2 + 1] = neg[i]
        }
    }
    return arr
}

let arr = [-9,1,2,10,4,-5]
let res = medications(arr)
print(res)
