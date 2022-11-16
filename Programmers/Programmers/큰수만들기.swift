//
//  큰수만들기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/08/02.
//

import Foundation

func 큰수만들기(_ number: String, _ k: Int) -> String {
    let digits = number.map { $0 }
    var numberStack = [Character]()
    var cursor = 0
    var countDisposed = 0

    while countDisposed < k && cursor < digits.count {
        if numberStack.isEmpty {
            numberStack.append(digits[cursor])
            cursor += 1
            continue
        }

        if numberStack.last! < digits[cursor] {
            numberStack.removeLast()
            countDisposed += 1
            continue
        }

        numberStack.append(digits[cursor])
        cursor += 1
    }


    if countDisposed < k {
        numberStack.removeLast(k)
        return numberStack.reduce("") {"\($0)\($1)"}
    }

    if numberStack.count < digits.count - k {
        numberStack.append(contentsOf: digits[cursor...])
    }

    return numberStack.reduce("") {"\($0)\($1)"}
}
