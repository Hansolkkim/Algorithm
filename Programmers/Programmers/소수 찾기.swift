//
//  소수 찾기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/01/02.
//

import Foundation

func findPrimeNum(_ numbers: String) -> Int {
    func makedesiredLengthNumber(_ target: [String],_ length : Int,_ idx: Int = 0) -> [Int] {
        var returnArray = [Int]()
        if idx == length {
            let makedInteger = Int(target[0..<idx].joined())!
            returnArray.append(makedInteger)
        } else {
            var target = target
            for i in idx..<target.count {
                target.swapAt(idx, i)
                returnArray += makedesiredLengthNumber(target, length, idx+1)
            }
        }
        return returnArray.filter{String($0).count == length}
    }
    func isPrime(_ number: Int) -> Bool {
        if number == 1 || number == 0 {return false}
        if number == 2 {return true}
        for i in 2...Int(sqrt(Double(number)))+1 {
            if number % i == 0 {return false}
        }
        return true
    }
    let numbers = numbers.map{String($0)}
    if numbers.count == 0 {
        return 0
    }
    var count = 0
    for lengths in 1...numbers.count {
        let tmpArray = Array(Set(makedesiredLengthNumber(numbers, lengths))).sorted()
        tmpArray.forEach {
            if isPrime($0) {count += 1}
        }
    }
    return count
}
