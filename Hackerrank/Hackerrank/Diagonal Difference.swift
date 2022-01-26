//
//  Diagonal Difference.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    let LTR = (0..<arr[0].count).map { row in
        let column = row
        return arr[row][column]
    }.reduce(0,+)
    let RTL = (0..<arr[0].count).map { row in
        let column = arr[0].count-row-1
        return arr[row][column]
    }.reduce(0,+)

    return abs(LTR - RTL)
}
