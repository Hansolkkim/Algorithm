//
//  Diagonal Difference.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    var LTR = 0, RTL = 0
    for i in 0..<arr[0].count {
        for j in 0..<arr[0].count {
            if i == j { LTR += arr[i][j] }
            if i + j + 1 == arr[0].count { RTL += arr[i][j] }
        }
    }
    return abs(LTR - RTL)
}
