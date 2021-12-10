//
//  비밀지도.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/09.
//

import Foundation

func interpretSecretMap(_ n: Int,_ arr1: [Int],_ arr2: [Int]) -> [String] {
    return (0..<n).map {
        let ORResult = String(arr1[$0] | arr2[$0], radix: 2) //비트연산자 "|"(OR) 사용
        let padded = String(repeating: "0", count: n - ORResult.count) + ORResult
        return padded.reduce("") {
            $0 + ($1 == "1" ? "#" : " ")
        }
    }
}
