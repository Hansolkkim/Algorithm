//
//  키패드 누르기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/20.
//

import Foundation

func pushKeyPad(_ numbers: [Int],_ hand: String) -> String {
    var currentHandPosition = [Position(y: 3, x: 0), Position(y: 3, x: 2)]
    var numbersToTap = numbers.map{Int(exactly: $0)!}
    var orderOfTap = ""
    while !numbersToTap.isEmpty {
        let targetPosition = findPosition(target: numbersToTap.removeFirst())
        switch targetPosition.x {
        case 0:
            orderOfTap += "L"
            currentHandPosition[0] = targetPosition
        case 2:
            orderOfTap += "R"
            currentHandPosition[1] = targetPosition
        default:
            if currentHandPosition[0].getDistance(x: targetPosition.x, y: targetPosition.y) > currentHandPosition[1].getDistance(x: targetPosition.x, y: targetPosition.y) {
                orderOfTap += "R"
                currentHandPosition[1] = targetPosition
            } else if currentHandPosition[0].getDistance(x: targetPosition.x, y: targetPosition.y) < currentHandPosition[1].getDistance(x: targetPosition.x, y: targetPosition.y) {
                orderOfTap += "L"
                currentHandPosition[0] = targetPosition
            } else {
                orderOfTap += hand == "right" ? "R" : "L"
                currentHandPosition[hand == "right" ? 1 : 0] = targetPosition
            }
        }
    }
    return orderOfTap
}

struct Position {
    var y: Int
    var x: Int
    
    func getDistance(x:Int, y:Int) -> Int {
        return abs(self.x - x) + abs(self.y - y)
    }
}

func findPosition(target: Int) -> Position {
    let numbersPosition = [[1,2,3],[4,5,6],[7,8,9],[10,0,10]]
    for yIndex in 0...3 {
        for xIndex in 0...2 {
            if target == numbersPosition[yIndex][xIndex] {
                return Position(y: yIndex, x: xIndex)
            }
        }
    }
    return Position(y: -1, x: -1)
}
