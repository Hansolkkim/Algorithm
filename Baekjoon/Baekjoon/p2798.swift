//
//  p2798.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/30.
//

import Foundation

func extractApproximation() {
    func combinations(_ a : [Int], _ n: Int,_ idx: Int = 0) -> [[Int]] {
        var returnArray = [[Int]]()
        if idx == n {
            returnArray.append([Int](a[0..<idx].sorted()))
        } else {
            var a = a
            for i in idx..<a.count {
                a.swapAt(idx, i)
                returnArray += combinations(a, n, idx+1)
            }
        }
        return Array(Set(returnArray))
    }
    
    let userInput = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
    let targetOfSum = userInput[1]
    let numbersArray = readLine()!.components(separatedBy: .whitespacesAndNewlines).filter{$0 != ""}.map{Int($0)!}
    let combiSum = combinations(numbersArray, 3).map{
        $0.reduce(0, +)
    }.sorted()
    if combiSum.contains(targetOfSum){print(targetOfSum)}
    else {
        var min = 300000, minIndex = 0
        for index in combiSum.indices {
            let dif = abs(targetOfSum - combiSum[index])
            if min > dif {
                min = dif
                minIndex = index
            }
        }
        print(combiSum[minIndex])
    }
}
