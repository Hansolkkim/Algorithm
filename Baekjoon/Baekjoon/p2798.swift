//
//  p2798.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/30.
//

import Foundation

func extractApproximation() {
    let userInput = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
    let numberOfnumbers = userInput[0] ,targetOfSum = userInput[1]
    let numbersArray = readLine()!.components(separatedBy: .whitespacesAndNewlines).filter{$0 != ""}.map{Int($0)!}
    var maxSum = -1
    for i in 0..<numberOfnumbers-2 {
        for j in i+1..<numberOfnumbers-1 {
            for k in j+1..<numberOfnumbers {
                let tempSum = numbersArray[i]+numbersArray[j]+numbersArray[k]
                if maxSum<tempSum && tempSum <= targetOfSum {maxSum = tempSum}
            }
        }
    }
    print(maxSum)
}
