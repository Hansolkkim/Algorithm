//
//  부족한 금액 계산하기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/09.
//

import Foundation

func calculatorShorfall(_ price: Int,_ money: Int,_ count: Int) -> Int64 {
    var sum: Int64 = 0, price: Int64 = Int64(price), money = Int64(money)
    for times in 1...count {
        sum += price * Int64(times)
    }
    return money < sum ? sum-money : 0
}
