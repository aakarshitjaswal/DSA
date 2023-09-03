import Foundation

/*
 Example 1:
 Input:
 n = 5,m = 5.
 arr1[] = {1,2,3,4,5}
 arr2[] = {2,3,4,4,5}
 Output:
  {1,2,3,4,5}

 Explanation:
 Common Elements in arr1 and arr2  are:  2,3,4,5
 Distnict Elements in arr1 are : 1
 Distnict Elemennts in arr2 are : No distinct elements.
 Union of arr1 and arr2 is {1,2,3,4,5}

 Example 2:
 Input:
 n = 10,m = 7.
 arr1[] = {1,2,3,4,5,6,7,8,9,10}
 arr2[] = {2,3,4,4,5,11,12}
 Output: {1,2,3,4,5,6,7,8,9,10,11,12}
 Explanation:
 Common Elements in arr1 and arr2  are:  2,3,4,5
 Distnict Elements in arr1 are : 1,6,7,8,9,10
 Distnict Elemennts in arr2 are : 11,12
 Union of arr1 and arr2 is {1,2,3,4,5,6,7,8,9,10,11,12}
 */

func unionOfTwoSortedArrays(_ a: [Int], _ b: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var result = [Int]()
    
    while i < a.count && j < b.count {
        if a[i] < b[j] {
            result.append(a[i])
            i += 1
        } else if a[i] > b[i] {
            result.append(b[j])
            j += 1
        } else {
            result.append(a[i])
            i += 1
            j += 1
        }
    }
    
    while i < a.count {
        result.append(a[i])
        i += 1
    }
    
    while j < b.count {
        result.append(b[j])
        j += 1
    }
    print(result)
    return result
}

unionOfTwoSortedArrays([1,2,3,4,5,6,7,8,9,10], [2,3,4,4,5,11,12])
