//
//  p10757.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func largeNumbersSum() {
    let input = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{$0}
    var A = String(input[0].reversed()), B = String(input[1].reversed())
    var carry = 0
    var resultOfSum = [Int]()
    while A.count != B.count { //길이 맞춰주기
        A.count > B.count ? (B += "0") : (A += "0")
    }
    
    while !A.isEmpty || !B.isEmpty {
        let sum = Int(String(A.removeFirst()))! + Int(String(B.removeFirst()))! + carry
        if sum > 9 {carry = 1}
        else {carry = 0}
        resultOfSum.append(sum % 10)
    }
    
    if carry == 1 {resultOfSum.append(1)}
    print(resultOfSum.reversed().reduce(""){String($0)+String($1)})
}
