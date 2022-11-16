//
//  하노이의탑.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/28.
//

import Foundation

func 하노이의탑(_ n: Int) -> [[Int]] {
    var res = [[Int]]()

    func hanoiMove(n: Int, start: Int, end: Int, mid: Int) {
        if n == 1 {
            return res.append([start, end])
        }

        hanoiMove(n: n-1, start: start, end: mid, mid: end)
        res.append([start, end])
        hanoiMove(n: n-1, start: mid, end: end, mid: start)
    }

    hanoiMove(n: n, start: 1, end: 3, mid: 2)
    return res
}
