//
//  이중우선순위큐.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/20.
//

import Foundation

func 이중우선순위큐(_ operations: [String]) -> [Int] {
    var queue: [Int] = []

    for operation in operations {
        let command = operation.components(separatedBy: " ")

        switch command[0] {
        case "D":
            if operation.contains("-") {
                var tempQueue = queue.sorted(by: >)
                _ = tempQueue.popLast()
                queue = tempQueue
            } else {
                var tempQueue = queue.sorted(by: <)
                _ = tempQueue.popLast()
                queue = tempQueue
            }
        case "I":
            queue.append(Int(command[1])!)
        default:
            continue
        }
    }

    return [queue.max() ?? 0, queue.min() ?? 0]
}
