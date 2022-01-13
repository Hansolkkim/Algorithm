//
//  Reverse Integer.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var x = x
    var reversedArray = Array<String>()
    if x < 0 {
        reversedArray.append("-")
        x = abs(x)
    }
    while x >= 1 {
        reversedArray.append(String(x%10))
        x /= 10
    }
    let reducedString = reversedArray.reduce("", +)
    
    guard let returnVal = Int(reducedString) else {return -1}
    return abs(returnVal) > Int32.max ? 0 : returnVal
}
