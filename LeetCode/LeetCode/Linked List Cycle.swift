//
//  Linked List Cycle.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func hasCycle(_ head: ListNode?) -> Bool {
    guard let head = head else {
        return false
    }
    var fast: ListNode? = head.next, slow: ListNode? = head
    while fast !== slow {
        if slow == nil || fast == nil {
            return false
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    return true
}
