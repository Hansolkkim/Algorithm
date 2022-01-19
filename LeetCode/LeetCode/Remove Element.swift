//
//  Remove Element.swift
//  LeetCode
//
//  Created by 김한솔 on 2022/01/19.
//

import Foundation

func removeElement(_ nums: [Int], _ val: Int) -> Int {
    return nums.filter{$0 != val}.count
}
