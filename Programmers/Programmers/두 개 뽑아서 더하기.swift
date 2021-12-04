//
//  두 개 뽑아서 더하기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func plusTwoElement(_ numbers: [Int]) -> [Int] {
    let cnt = numbers.count
    var set: Set<Int> = []
    for i in 0..<cnt {
        for j in (i+1)..<cnt {
            set.insert(numbers[i] + numbers[j])
        }
    }
    return Array(set).sorted()
}
