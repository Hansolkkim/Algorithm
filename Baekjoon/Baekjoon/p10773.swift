//
//  p10773.swift
//  Baekjoon
//
//  Created by κΉνμ on 2022/02/13.
//

import Foundation

func mySolutionOf10773() {
    var stack = Stack()
    let caseCount = Int(readLine()!.components(separatedBy: " ").first ?? "0") ?? 0
    
    for _ in 0..<caseCount {
        let inputNumber = readLine()!
        switch inputNumber {
        case "0" :
            stack.pop()
        default :
            stack.push(Int(inputNumber)!)
        }
    }
    print(stack.stack.reduce(0, +))
}
