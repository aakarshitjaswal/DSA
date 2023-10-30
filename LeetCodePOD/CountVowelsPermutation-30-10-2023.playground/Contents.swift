import Foundation

//Solution as observed

func countVowelPermutation(_ n: Int) -> Int {
    let vowelsCount = 5, nexts: [Int: [Int]] = [0: [1], 1: [0, 2], 2: [0, 1, 3, 4], 3: [2, 4], 4: [0]], mod = 1_000_000_007
    var dp = [Int](repeating: 1, count: vowelsCount)
    for _ in 1..<n {
        var newDp = [Int](repeating: 0, count: vowelsCount)
        for j in 0..<vowelsCount {
            for next in nexts[j, default: [Int]()] {
                newDp[j] += dp[next] % mod
            }
        }
        dp = newDp
    }
    return dp.reduce(0, +) % mod
}
