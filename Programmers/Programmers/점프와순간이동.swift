//
//  점프와순간이동.swift
//  Programmers
//
//  Created by 김한솔 on 2022/08/02.
//

import Foundation

func 점프와순간이동(_ N: Int) -> Int {
    var n = N
    var cost = 0

    while n > 0 {
        cost += n % 2
        n /= 2
    }

    return cost
}
