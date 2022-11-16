//
//  문자열압축.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/26.
//

import Foundation

func 문자열압축(_ s: String) -> Int {
    if s.count == 1 {
        return 1
    }

    var compressedStrings = [String](repeating: "", count: s.count / 2)

    var minLen = 1000

    func dfs(targetString: String, count: Int, length: Int, wholeString: String) {
        var wholeString = wholeString
        guard wholeString.count >= length else {
            (count == 1) ?
            (compressedStrings[length-1].append("\(targetString + wholeString)")) :
            (compressedStrings[length-1].append("\(count)\(targetString + wholeString)"))
            return
        }
        if wholeString.prefix(length) == targetString {
            wholeString.removeFirst(length)
            dfs(targetString: targetString, count: count + 1, length: length, wholeString: wholeString)
        } else {
            (count == 1) ?
            (compressedStrings[length-1].append("\(targetString)")) :
            (compressedStrings[length-1].append("\(count)\(targetString)"))

            let targetString = String(wholeString.prefix(length))
            wholeString.removeFirst(length)
            dfs(targetString: targetString, count: 1, length: length, wholeString: wholeString)
        }
    }

    for len in 1..<s.count / 2 + 1 {
        let startIndex = s.index(s.startIndex, offsetBy: len)
        let endIndex = s.index(s.startIndex, offsetBy: s.count - 1)
        let wholeString = String(s[startIndex...endIndex])
        let targetString = String(s.prefix(len))
        dfs(targetString: targetString, count: 1, length: len, wholeString: wholeString)
        minLen = min(minLen, compressedStrings[len-1].count)
    }

    print(compressedStrings)
    return minLen
}
