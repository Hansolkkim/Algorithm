//
//  Apple and Orange.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    print(apples.filter {a + $0 >= s && a + $0 <= t}.count)
    print(oranges.filter {b + $0 >= s && b + $0 <= t}.count)
}
