//
//  크레인 인형뽑기 게임.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func clawMachine (_ board: [[Int]], _ moves: [Int]) -> Int {
    var currentBoard = board
    var countPopedDoll: Int = 0
    var basketStack = [Int]()
    for column in moves {
        let realColumn = column - 1
        for row in 0..<board[0].count {
            if currentBoard[row][realColumn] != 0 {
                if basketStack.isEmpty { //바구니가 비어있었다면 그냥 뽑은 인형을 담으면 됨
                    basketStack.append(currentBoard[row][realColumn])
                } else { //바구니가 비어있지 않았다면, 바구니 맨 위에 있는 인형과 뽑은 인형을 비교 후 넣을지 말지 해야함
                    let popedDoll: Int! = basketStack.popLast()

                    if popedDoll != currentBoard[row][realColumn] { // 바구니 맨 위에 있던 인형과 뽑은 인형이 다르면 그냥 담으면 됨.
                        basketStack.append(popedDoll)
                        basketStack.append(currentBoard[row][realColumn])
                    } else {
                        countPopedDoll += 2
                    }
                }
                currentBoard[row][realColumn] = 0
                break
            }
        }
    }
    return countPopedDoll
}
