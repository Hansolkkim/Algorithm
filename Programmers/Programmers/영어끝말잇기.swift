//
//  영어끝말잇기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/14.
//

import Foundation

func 영어끝말잇기(_ n: Int, _ words: [String]) -> [Int] {
    var mentionedWords: [String: Bool] = [words[0]: true]
    var index = 1

    while index < words.count {
        if words[index-1].last != words[index].first || mentionedWords[words[index]] != nil {
            return [(index) % n + 1, index / n + 1]
        }

        mentionedWords[words[index]] = true
        index += 1
    }

    return [0, 0]
}
