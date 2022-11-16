//
//  입국심사.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/27.
//

import Foundation

func 입국심사(_ n: Int, _ times: [Int]) -> Int64 {
    var max = times.max()! * n
    var min = 1
    var res = 0

    while min <= max {
        let mid = (min + max) / 2
        var countEndImmigrationPeople = 0

        times.forEach {
            countEndImmigrationPeople += mid / $0
        }

        if countEndImmigrationPeople < n {
            min = mid + 1
        } else {
            max = mid - 1
            res = mid
        }
    }

    return Int64(res)
}
