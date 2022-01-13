//
//  Palindrome Number.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let stringX = String(x).map{ String($0) }
    return stringX == stringX.reversed()
}
