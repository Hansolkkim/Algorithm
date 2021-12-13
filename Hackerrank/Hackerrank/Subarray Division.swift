//
//  Subarray Division.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/13.
//

import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var ways = 0
    for i in 0...(s.count - m) {
        let slicesSum = s[i..<(i+m)].reduce(0, +)
        if slicesSum == d { ways += 1 }
    }
    return ways
}
