//
//  Container With Most Water.swift
//  LeetCode
//
//  Created by 김한솔 on 2022/01/19.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var maxArea = 0
    var leftSide = 0
    var rightSide = height.count - 1
    
    while (leftSide < rightSide) {
        let width = rightSide - leftSide
        var heighT = 0
        if (height[leftSide] <= height[rightSide]) {
            heighT = height[leftSide]
            leftSide += 1
        } else {
            heighT = height[rightSide]
            rightSide -= 1
        }
        maxArea = max(width * heighT, maxArea)
    }
    return maxArea
}
