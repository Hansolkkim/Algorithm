//
//  Climbing the Leaderboard.swift
//  Hackerrank
//
//  Created by 김한솔 on 2022/01/07.
//

import Foundation

func getRank(ranked: [Int], player: [Int]) -> [Int] {
    if ranked.isEmpty {return player.map{_ in 1}}
    if player.isEmpty {return []}
    var rankArray = [Int]()
    
    player.forEach {
        var sortedRanker = ranked
        sortedRanker.append($0)
        sortedRanker = Array(Set(sortedRanker)).sorted(by: >)
        rankArray.append(sortedRanker.firstIndex(of: $0)!+1)
    }
//    player.forEach { score in
//        var tempRank = 0
//        sortedRanker.enumerated().forEach {
//            if score >= $0.element {
//                tempRank = $0.offset + 1
//            } else {
//                tempRank = $0.offset + 2
//            }
//        }
//        rankArray.append(tempRank)
//    }
    return rankArray
}
