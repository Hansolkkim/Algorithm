//
//  Plus Minus.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func plusMinus(arr: [Int]) -> Void {
    var positive: Float = 0, negative: Float = 0, zeros: Float = 0
    
    arr.forEach{ index in
        positive += index > 0 ? 1 : 0
        negative += index < 0 ? 1 : 0
        zeros += index == 0 ? 1 : 0
    }
    print(positive / Float(arr.count))
    print(negative / Float(arr.count))
    print(zeros / Float(arr.count))
}
