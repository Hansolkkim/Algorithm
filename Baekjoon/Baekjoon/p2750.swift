//
//  p2750.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/30.
//

import Foundation

func bubbleSort() {
    let sizeOfArray = Int(readLine()!)!
    var numbers = [Int]()
    for _ in 1...sizeOfArray {
        numbers.append(Int(readLine()!)!)
    }
    for i in 0...sizeOfArray-2 {
        for j in 0...sizeOfArray-2-i {
            if numbers[j] > numbers[j+1] {
                numbers.swapAt(j, j+1)
            }
        }
    }
    numbers.forEach{print($0)}
}
