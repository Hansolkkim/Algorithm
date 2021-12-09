//
//  최소직사각형.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/09.
//

import Foundation

func getMinSquare(_ sizes: [[Int]]) -> Int {
    let sortedSizes = sizes.sorted {$0[0] > $1[0]}
    var tempArr = sortedSizes
    sortedSizes.enumerated().forEach {
        if $0.element[1] > $0.element[0] {
            tempArr[$0.offset][0] = $0.element[1]
            tempArr[$0.offset][1] = $0.element[0]
        }
    }
    return tempArr.sorted{$0[0]>$1[0]}[0][0] * tempArr.sorted {$0[1]>$1[1]}[0][1]
}
