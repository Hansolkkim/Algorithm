//
//  Remove Duplicates from Sorted List.swift
//  WedAlgorithm Week2
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    
    if head?.val == nil {
        return nil
    }
    var saved = Array<Int>()
    var node = head
    saved.append(node!.val)
    var prev = head
    
    while node?.next != nil {
        node = node?.next
        if saved.contains(node!.val) {
            prev?.next = node?.next
        } else {
            saved.append(node!.val)
            prev = node
        }
        
    }
    return head
}

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}
