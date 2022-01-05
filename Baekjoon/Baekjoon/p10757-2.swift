//
//  p10757-2.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func largeNumberSum2() {
    let input = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{$0}
    let A = input[0].map{Int(String($0))!}, B = input[1].map{Int(String($0))!}
    var binA = [[Bool]](), binB = [[Bool]]()
    var binAddResult = [[Bool]]()
    var addResult = [Int]()
    A.reversed().forEach{binA.append(Converter.dec2bin($0))}
    B.reversed().forEach{binB.append(Converter.dec2bin($0))}
    while binA.count != binB.count {
        binA.count > binB.count ? binB.append([false]) : binA.append([false])
    }
    binA.enumerated().forEach {
        binAddResult.append(BoolAdder.oneByteAdder($0.element, binB[$0.offset]))
    }
    binAddResult.forEach {
        addResult.append(Converter.bin2dec($0))
    }
    for Digit in 0..<addResult.count-1 {
        if addResult[Digit] >= 10 {
            addResult[Digit] %= 10
            addResult[Digit+1] += 1
        }
    }
    print(addResult.reversed().reduce(""){String($0)+String($1)})
}

struct LogicGate {
    
    static func AND(_ bitA: Bool,_ bitB: Bool) -> Bool {
        return bitA && bitB
    }
    
    static func OR(_ bitA: Bool,_ bitB: Bool) -> Bool {
        return bitA || bitB
    }
    
    static func NAND(_ bitA: Bool,_ bitB: Bool) -> Bool {
        return !(bitA && bitB)
    }
    
    static func XOR(_ bitA: Bool,_ bitB: Bool) -> Bool {
        return (!bitA && bitB) || (bitA && !bitB)
    }
}
struct BoolAdder {
    
    static func halfAdder(_ bitA: Bool,_ bitB: Bool) -> (carry: Bool, sum: Bool) {
        func SUM(_ bitA: Bool,_ bitB: Bool) -> Bool {
            return LogicGate.XOR(bitA, bitB)
        }
        func carry(_ bitA: Bool,_ bitB: Bool) -> Bool {
            return LogicGate.AND(bitA, bitB)
        }
        return (carry(bitA, bitB), SUM(bitA,bitB))
    }
    
    static func fullAdder(_ bitA: Bool,_ bitB: Bool,_ previousCarry: Bool) -> [Bool] {
        let (carry1, sum1) = halfAdder(bitA, bitB)
        let (carry2, sum) = halfAdder(sum1, previousCarry)
        let carry = LogicGate.OR(carry1, carry2)
        return [carry, sum]
    }
    
    static func oneByteAdder(_ byteA: [Bool],_ byteB: [Bool]) -> [Bool] {
        var byteA = byteA, byteB = byteB
        while byteA.count != byteB.count {
            byteA.count > byteB.count ? byteB.append(false) : byteA.append(false)
        }
        var addResult = [Bool]()
        while !byteA.isEmpty && !byteB.isEmpty {
            let tmpAddResult = fullAdder(byteA.removeFirst(), byteB.removeFirst(), addResult.isEmpty ? false : addResult.removeLast())
            let tmpCarry = tmpAddResult[0], tmpSum = tmpAddResult[1]
            addResult.append(tmpSum)
            addResult.append(tmpCarry)
        }
        return addResult
    }
}

struct Converter {
    
    static func dec2bin(_ target: Int) -> [Bool] {
        var target = target
        var convertedArray = [Bool]()
        while target != 0 {
            convertedArray.append(target % 2 == 1 ? true : false)
            target /= 2
        }
        return convertedArray
    }
    
    static func bin2dec(_ target: [Bool]) -> Int {
        var target = target
        var convertedValue = 0
        var factor = 1
        while !target.isEmpty {
            convertedValue += factor * (target.removeFirst() == true ? 1 : 0)
            factor *= 2
        }
        return convertedValue
    }
}
