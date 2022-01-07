//
//  Beautiful Days at the Movies.swift
//  Hackerrank
//
//  Created by 김한솔 on 2022/01/07.
//

import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var countBeauifulDays = 0
    for day in i...j {
        let tmpDay = day
        var day = day
        var reversedDay = 0
        while day > 0 {
            reversedDay *= 10
            reversedDay += day%10
            day /= 10
        }
        if abs(tmpDay - reversedDay) % k == 0 {
            countBeauifulDays += 1
        }
    }
    return countBeauifulDays
}
