//
//  The Hurdle Race.swift
//  Hackerrank
//
//  Created by κΉνμ on 2021/12/15.
//

import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHeight = height.max()!
    if k >= maxHeight {return 0}
    return maxHeight-k
}
