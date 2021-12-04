//
//  Birthday Cake Candles.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    var max = 0
    var cnt = 0
    for i in candles {
        if i > max {
            max = i
            cnt = 0
        }
        if i == max {cnt += 1}
    }
    return cnt
}
