//
//  K번째수.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func kthNumber(_ array: [Int],_ commands: [[Int]]) -> [Int] {
    return commands.map {
        array[$0[0]-1...$0[1]-1].sorted()[$0[2]-1]
    }
}
