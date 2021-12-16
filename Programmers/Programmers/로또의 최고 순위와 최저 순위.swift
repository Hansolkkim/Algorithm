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
    let rank: [Int] = [matchedCount + zeroCount, matchedCount]
    
    return rank.map {switch $0 {
    case 2: return 5
    case 3: return 4
    case 4: return 3
    case 5: return 2
    case 6: return 1
    default: return 6
    }
        
    }
}
