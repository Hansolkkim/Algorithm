//
//  Two Sum.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func twoSum(_ nums: [Int],_ target: Int) -> [Int] {
    var returnArray = Array<Int>()
    
    for (index, num) in nums.enumerated() {
        let SubtractedTarget = target - num
        if let targetIdx = nums.firstIndex(of: SubtractedTarget) {
            returnArray.append(index)
            if targetIdx != index {
                returnArray.append(targetIdx)
            } else {
                returnArray = []
                continue
            }
            return returnArray.sorted()
        } else {
            returnArray = []
            continue
        }
    }
    
    return returnArray.sorted()
}
