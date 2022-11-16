//
//  프린터.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/24.
//

import Foundation

func getPrintedOrder(_ priorities:[Int],_ location: Int) -> Int {
    var priorities = priorities
    var order = priorities.enumerated().map{$0.offset}
    var count = 0
    while !priorities.isEmpty {
        if priorities[0] < priorities.max()! {
            priorities.append(priorities.removeFirst())
            order.append(order.removeFirst())
        } else {
            count += 1
            priorities.removeFirst()
            if order.removeFirst() == location {
                return count
            }
        }
    }
    return count
}

func getPrintedOrder2(_ priorities: [Int], _ location: Int) -> Int {
    var priorities = priorities
    var initialOrder = priorities.enumerated().map { $0.offset }
    var count = 0

    while !priorities.isEmpty {
        if let maxPriority = priorities.max(),
           priorities[0] < maxPriority {
            priorities.append(priorities.removeFirst())
            initialOrder.append(initialOrder.removeFirst())
        } else {
            count += 1
            priorities.removeFirst()
            if initialOrder.removeFirst() == location {
                return count
            }
        }
    }

    return count
}

func getPrintOrder3(_ priorities: [Int], _ location: Int) -> Int {
    var priorities = priorities
    var initialOrder = priorities.enumerated().map { $0.offset }
    var count = 0
    var cursor = 0
    let limit = priorities.count
    
    while cursor < limit {
        if let maxPriority = priorities.max(),
           priorities[cursor] < maxPriority {
            priorities.append(priorities[cursor])
            initialOrder.append(initialOrder[cursor])
        } else {
            count += 1
            if initialOrder[cursor] == location {
                return count
            }
        }
        cursor += 1
    }
    return count
}
