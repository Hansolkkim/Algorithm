//
//  나누어 떨어지는 숫자 배열.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func dividableNumArr(_ arr:[Int], _ divisor:Int) -> [Int] {
    let dividableNum = arr.filter {
        $0 % divisor == 0
    }
    if dividableNum.isEmpty {
        return [-1]
    }
    return dividableNum.sorted()
}
