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
