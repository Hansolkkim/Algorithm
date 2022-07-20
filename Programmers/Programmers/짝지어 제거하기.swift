//
//  짝지어 제거하기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/22.
//

import Foundation

func isRemovable(_ s: String) -> Int {
    let arr = Array(s)
    var targetStack = [Character]()
    for i in arr.indices {
        if !targetStack.isEmpty {
            if targetStack.last != arr[i] {
                targetStack.append(arr[i])
            } else {
                targetStack.removeLast()
            }
        } else {
            targetStack.append(arr[i])
        }
    }
    return targetStack.isEmpty ? 1 : 0
}

func isRemova(_ s: String) -> Int {
    let s = Array(s)
    var lastWordIndex = 0

    for (index, char) in s.enumerated() {
        if s[lastWordIndex] == char {
            lastWordIndex = (lastWordIndex >= 1) ? lastWordIndex - 1 : 0
        } else {
            lastWordIndex = index
        }
    }

    return (lastWordIndex == 0) ? 1 : 0
}
