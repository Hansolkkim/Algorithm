import Foundation

func 연속부분수열합의개수(_ elements: [Int]) -> Int {
    var numberSet = Set<Int>()
    let elements2 = elements + elements
    var dp = [Int](repeating: 0, count: elements2.count + 1)

    for i in 0..<elements2.count {
        dp[i + 1] += dp[i] + elements2[i]
    }

    for length in 1...elements.count {
        for startIndex in 0..<dp.count {
            if startIndex + length >= dp.count {continue}
            numberSet.insert(dp[startIndex + length] - dp[startIndex])
        }
    }

    return numberSet.count
}
