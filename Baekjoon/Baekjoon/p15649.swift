//
//  p15649.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/18.
//

import Foundation

func nAndM1() {
    func permutation(_ a : [Int], _ n: Int,_ idx: Int = 0) {
        if idx == n {
            permutationNumberArray.append([Int](a[0..<idx]))
            return
        } else {
            var a = a
            for i in idx..<a.count {
                a.swapAt(idx, i)
                permutation(a, n, idx+1)
            }
        }
    }
    
    let inputFromUser = readLine()?.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
    var permutationNumberArray = [[Int]]()
    
    permutation([Int](1...inputFromUser![0]), inputFromUser![1])
    permutationNumberArray.forEach {
        var tempString = ""
        for i in 0..<$0.count {
            tempString += "\($0[i]) "
        }
        print(tempString)
    }
}
