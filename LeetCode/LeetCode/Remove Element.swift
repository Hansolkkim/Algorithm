//
//  Remove Element.swift
//  LeetCode
//
//  Created by κΉνμ on 2022/01/19.
//

import Foundation

func removeElement(_ nums: [Int], _ val: Int) -> Int {
    return nums.filter{$0 != val}.count
}
