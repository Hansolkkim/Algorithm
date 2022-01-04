//
//  Picking Numbers.swift
//  Hackerrank
//
//  Created by 김한솔 on 2022/01/04.
//

import Foundation

func pickNumbers(a: [Int]) -> Int {
    var numArray = [[Int]]()
    for num in a {
        numArray.append(a.filter{abs($0-num) <= 1})
    }
    var maxCount = 0
    numArray.forEach {
        maxCount = max(maxCount,$0.count)
    }
    return maxCount
}
