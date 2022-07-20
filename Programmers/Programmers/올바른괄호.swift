//
//  올바른괄호.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/13.
//

import Foundation

func rightBracket(_ s: String) -> Bool {
    var countUnclosedBracket = 0

    for bracket in s {
        if bracket == "(" {
            countUnclosedBracket += 1
        } else {
            countUnclosedBracket -= 1
        }

        if countUnclosedBracket < 0 {
            return false
        }
    }

    return countUnclosedBracket == 0
}
