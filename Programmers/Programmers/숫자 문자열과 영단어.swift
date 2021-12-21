//
//  숫자 문자열과 영단어.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/21.
//

import Foundation

func replaceEngToNum(_ s: String) -> Int {
    let numbers = ["zero", "one", "two", "three", "four",
                   "five", "six", "seven", "eight", "nine"]
    var str = s
    for index in 0..<numbers.count {
        str = str.replacingOccurrences(of: numbers[index], with: String(index))
    }
    return Int(str) ?? 0
}
