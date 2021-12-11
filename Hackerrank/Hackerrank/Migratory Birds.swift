//
//  Migratory Birds.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/11.
//

import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var dict = Dictionary<Int, Int>()
    arr.forEach { dict[$0] = (dict[$0] ?? 0) + 1 }
    return dict.filter {$0.1 == dict.values.max()}.keys.min() ?? 0
}
