import Foundation

func numFactoredBinaryTrees(_ arr: [Int]) -> Int {
    let n = arr.count
    let mod = 1_000_000_007
    let arr = arr.sorted()

    var dp: [Int] = Array(repeating: 0, count: n)
    for (i, value) in arr.enumerated() {
        var count = 1
        var left = 0
        var right = i

        // Early exit condition: we only need to count half of the pairs.
        while left <= right {
            while right > left && arr[left] * arr[right] > value {
                right -= 1
            }

            if arr[left] * arr[right] == value {
                count += dp[left] * dp[right]
                if left != right {
                    // Account the second half of the pairs.
                    count += dp[left] * dp[right]
                }
                count %= mod
            }
            left += 1
        }

        dp[i] = count
    }
    return dp.reduce(0) { ($0 + $1) % mod }
}
