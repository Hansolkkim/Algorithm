//
//  Longest Common Prefix.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 || strs.count == 1 { return strs[0] }
    let sortedStrings = strs.sorted { $0.count < $1.count }
    var prefix = sortedStrings[0]
    for index in 1...sortedStrings.count-1 {
        for _ in 0..<prefix.count {
            if !sortedStrings[index].hasPrefix(prefix) {
                prefix.removeLast()
            } else { break }
        }
    }
    return prefix
}
