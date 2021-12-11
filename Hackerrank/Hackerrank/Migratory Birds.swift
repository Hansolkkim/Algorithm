//
//  Migratory Birds.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/11.
//

import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var dict = Dictionary<Int, Int>()
    arr.forEach {(arrElement) in
        let condition: ((Int, Int)) -> Bool = {
            $0.0 == arrElement
        }
        if !dict.contains(where: condition) {
            dict.updateValue(1, forKey: arrElement)
        } else {
            let tempVal = dict[arrElement]!
            dict.updateValue(tempVal+1, forKey: arrElement)
        }
    }
    var max = 1, maxKey = 0
    for (key,value) in dict {
        if value > max {max = value; maxKey = key}
    }
    return maxKey
}
