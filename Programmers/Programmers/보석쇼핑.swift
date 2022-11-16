//
//  보석쇼핑.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/28.
//

import Foundation

func 보석쇼핑(_ gems: [String]) -> [Int] {
    let countWholeGems = Set(gems).count
    if countWholeGems == 1 {
        return [1, 1]
    }
    var gemList = [gems[0]: 1]
    var firstIndex = 0
    var lastIndex = 0
    var min = [-100000, 1000000]

    while lastIndex < gems.count {
        if gemList.count == countWholeGems {
            let distance = lastIndex - firstIndex + 1
            let prevMinDistance = min[1] - min[0] + 1
            if prevMinDistance > distance {
                min = [firstIndex, lastIndex]
            }
            let gem = gems[firstIndex]
            gemList[gem] = (gemList[gem] ?? 0) - 1
            if (gemList[gem] ?? 0) <= 0 {
                gemList.removeValue(forKey: gem)
            }
            firstIndex += 1
            continue
        }

        lastIndex += 1
        if lastIndex >= gems.count {
            break
        }
        gemList[gems[lastIndex]] = (gemList[gems[lastIndex]] ?? 0) + 1
    }
    
    return [min[0] + 1, min[1] + 1]
}
