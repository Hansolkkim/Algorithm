//
//  로또의 최고 순위와 최저 순위.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/16.
//

import Foundation

func highestAndLowestRankInLotto(_ lottos: [Int],_ win_nums: [Int]) -> [Int] {
    var matched = 0, zeros = 0
    for lotto in lottos {
        if win_nums.contains(lotto) {matched += 1}
        if lotto == 0 {zeros += 1}
    }
    var rank: [Int] = [matched + zeros, matched]
    
    return rank.map {switch $0 {
    case ...1: return 6
    case 2: return 5
    case 3: return 4
    case 4: return 3
    case 5: return 2
    case 6: return 1
    default: return 0
    }
        
    }
}
