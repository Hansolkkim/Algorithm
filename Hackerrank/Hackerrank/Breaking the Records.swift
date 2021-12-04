//
//  Breaking the Records.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    var min = scores[0], max = scores[0]
    var minCount = 0, maxCount = 0
    scores.forEach {
        if $0 > max {
            max = $0
            maxCount += 1
        }
        if $0 < min {
            min = $0
            minCount += 1
        }
    }
    return [maxCount, minCount]
}
