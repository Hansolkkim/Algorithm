//
//  p1009.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func printFirstDigitOfSquare() {
    let numberOfcases = Int(readLine()!)!
    let firstDigitOfSquare = [[10,10,10,10],
                              [1,1,1,1],
                              [2,4,8,6],
                              [3,9,7,1],
                              [4,6,4,6],
                              [5,5,5,5],
                              [6,6,6,6],
                              [7,9,3,1],
                              [8,4,2,6],
                              [9,1,9,1]]
    for _ in 0..<numberOfcases {
        let inputArray = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
        print(firstDigitOfSquare[inputArray[0]%10][(inputArray[1]-1)%4])
    }
}
