//
//  p15649.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/18.
//

import Foundation

func nAndM1() {
    func permutation(_ a : [Int], _ n: Int,_ idx: Int = 0) -> [[Int]] {
        var returnArray = [[Int]]()
        if idx == n {
            returnArray.append([Int](a[0..<idx]))
        } else {
            var a = a
            for i in idx..<a.count {
                a.swapAt(idx, i)
                returnArray += permutation(a, n, idx+1)
            }
        }
        return returnArray
    }
    
    let inputFromUser = readLine()?.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
    let permutationNumberArray = permutation([Int](1...inputFromUser![0]), inputFromUser![1])
    
    permutationNumberArray.forEach {
        var tempString = ""
        for i in 0..<$0.count {
            tempString += "\($0[i]) "
        }
        print(tempString)
    }
}
