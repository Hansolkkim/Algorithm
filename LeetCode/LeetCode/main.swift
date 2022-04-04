//
//  main.swift
//  LeetCode
//
//  Created by 김한솔 on 2022/01/12.
//

import Foundation

//문제 "Two Sum" 출력
print(twoSum([3, 3], 6))

//문제 "Reverse Integer" 출력
print(reverse(-123))

//문제 "Remove Duplicates from Sorted List" 출력
let myListNode1 = ListNode(val: 3)
print(deleteDuplicates(myListNode1)!)

//문제 "Palindrome Number" 출력
print(isPalindrome(101))

//문제 "Longest Common Prefix" 출력
print(longestCommonPrefix(["flower","flow","flight"]))

//문제 "Linked List Cycle" 출력
let myListNode3 = ListNode(val: 2)
let myListNode2 = ListNode(val: 1, next: myListNode3)
myListNode3.next = myListNode2
print(hasCycle(myListNode2))

//문제 "Remove Element" 출력
print(removeElement([3,2,2,3], 3))

//문제 "Container With Most Water" 출력
print(maxArea([1,8,6,2,5,4,8,3,7]))

//문제 "Count Common Words With One Occurrence" 출력
print(countWord(["leetcode","is","amazing","as","is"], ["amazing","leetcode","is"]))
