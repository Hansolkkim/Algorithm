//
//  N으로표현.swift
//  Programmers
//
//  Created by 김한솔 on 2022/08/02.
//

import Foundation

func N으로표현(_ N: Int, _ number: Int) -> Int {
    var min = 9
    var numberCount = [Int: Int]()

    numberCount[1 * N] = 1
    numberCount[11 * N] = 2
    numberCount[111 * N] = 3
    numberCount[1111 * N] = 4

    func dfs(count: Int, sum: Int, target: Int) {
        if count >= min { return }
        if sum == target {
            return min = count
        }

        for (usingNumber, diff) in numberCount {
            dfs(count: count + diff, sum: sum + usingNumber, target: target)
            dfs(count: count + diff, sum: sum - usingNumber, target: target)
            dfs(count: count + diff, sum: sum / usingNumber, target: target)
            dfs(count: count + diff, sum: sum * usingNumber, target: target)
        }
    }

    dfs(count: 0, sum: 0, target: number)

    return min >= 9 ? -1 : min
}
