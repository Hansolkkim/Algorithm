//
//  로또의 최고 순위와 최저 순위.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/16.
//

import Foundation

func highestAndLowestRankInLotto(_ lottos: [Int],_ win_nums: [Int]) -> [Int] {
    let zeroCount = lottos.filter{ $0 == 0 }.count
    let matchedCount = win_nums.filter {lottos.contains($0)}.count
    
    return [min(7-matchedCount-zeroCount,6), min(7-matchedCount,6)]
}
