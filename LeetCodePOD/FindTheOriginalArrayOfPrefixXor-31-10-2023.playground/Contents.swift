import Foundation

func findArray(_ pref: [Int]) -> [Int] {
    [pref[0]] + pref
        .indices
        .dropFirst()
        .map { pref[$0] ^ pref[$0 - 1] }
}
