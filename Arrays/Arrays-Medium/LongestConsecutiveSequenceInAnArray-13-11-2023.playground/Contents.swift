import Foundation


/*
 Example 1:

 Input: [100, 200, 1, 3, 2, 4]

 Output: 4

 Explanation: The longest consecutive subsequence is 1, 2, 3, and 4.

 Input: [3, 8, 5, 7, 6]

 Output: 4

 Explanation: The longest consecutive subsequence is 5, 6, 7, and 8.
 */


func longestConsecutiveSequenceOPTIMAL(_ nums:[Int]) -> Int {

    var map: [Int: Bool] = [:]
    
    var maxCount = 0
    
    
    for i in 0..<nums.count {
        map[nums[i]] = true
    }
    
    
    for i in 0..<nums.count {
        var prev = nums[i] - 1
        
        if let hasPrev = map[prev] {
            continue
        } else {
            var currentCount = 1
            var nextNum = nums[i] + 1
            
            while map[nextNum] != nil && map[nextNum]!  {
                currentCount += 1
                nextNum += 1
            }
            
            if currentCount > maxCount {
                maxCount = currentCount
            }
        }

        
    }
    
    func ls(n: Int, a: [Int]) -> Bool {
        for i in 0..<a.count {
            if a[i] == n {
                return true
            }
        }
        
        return false
    }
    
    return maxCount
}

longestConsecutiveSequenceOPTIMAL([11, 13, 12, 15, 14, 1, 1, 1, 2, 3, 4, 10,8,9,6,5,7 ])

func longestConsecutiveSequenceBRUTE(_ a:[Int]) -> Int {
    
    var lookingFor = 0
    var array:[Int] = []
    var map: [Int: Bool] = [:]
    var maxCount = 0
    
    
    for i in 0..<a.count {
        
        lookingFor = a[i] + 1
        var j = 0
        var countSofar = 1
        array.append(a[i])
        
        while j < a.count {
            map[a[j]] = true
            
            if let found = map[lookingFor] {
                array.append(lookingFor)
                lookingFor += 1
                countSofar += 1
                continue
            }
            
            if a[j] == lookingFor {
                lookingFor += 1
                countSofar += 1
                array.append(a[j])

                j += 1
            } else {
                j += 1
            }
        }
        
        if countSofar > maxCount {
            maxCount = countSofar
        }
        
        array = []
        
    }
    
    return maxCount
}

longestConsecutiveSequenceBRUTE([11, 13, 12, 15, 14, 1, 1, 1, 2, 3, 4, 10,8,9,6,5,7 ])



