//
//  모의고사.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func determineWinner(_ answer: [Int]) -> [Int] {
    
    let Supo_1 = [1, 2, 3, 4, 5]
    let Supo_2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let Supo_3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score = [0, 0, 0]
    var Winner:[Int] = []
    let answerLength = answer.count
    for questionNum in 0..<answerLength {
        if answer[questionNum] == Supo_1[questionNum%5] {
            score[0] += 1
        }
        if answer[questionNum] == Supo_2[questionNum%8] {
            score[1] += 1
        }
        if answer[questionNum] == Supo_3[questionNum%10] {
            score[2] += 1
        }
    }
    for i in 0...2{
        if score.max() == score[i] {
            Winner.append(i+1)
        }
    }
    return Winner.sorted()
}
