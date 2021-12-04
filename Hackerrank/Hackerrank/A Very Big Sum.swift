//
//  A Very Big Sum.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func veryBigSum(arr: [Int]) -> Int {
    return arr.reduce(0) {$0 + $1}
}
