//
//  SkillCheckTest.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/11.
//

import Foundation

func skillCheckTest1(_ num: Int) -> Int {
    var count = 0
    var num = num

    while num != 1 && count <= 500 {
        print(num)
        if num % 2 == 0 {
            num /= 2
        } else {
            num = num * 3 + 1
        }
        count += 1
    }

    return count >= 500 ? -1 : count
}

func skillCheckTest2(_ x: Int, _ n: Int) -> [Int64] {

    func fun(start: Int64, target: [Int64], count: Int64) -> [Int64] {
        if count != 0 {
            return target + [start * count] + fun(start: start, target: target, count: count-1)
        } else {
            return target
        }
    }

    return fun(start: Int64(x), target: [Int64](), count: Int64(n)).sorted {
        abs($0) < abs($1)
    }
}
