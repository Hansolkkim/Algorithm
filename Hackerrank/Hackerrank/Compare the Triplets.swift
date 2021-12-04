//
//  Compare the Triplets.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var resultArr = [Int](repeating: 0, count: 2)
    for index in 0..<a.count {
        resultArr[0] += a[index] > b[index] ? 1 : 0
        resultArr[1] += a[index] < b[index] ? 1 : 0
    }
    return resultArr
}
