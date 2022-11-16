//
//  소수만들기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/28.
//

import Foundation

func 소수만들기(_ nums: [Int]) -> Int {
    var count = 0
    let sumCombi = getCombination(nums, k: 3).compactMap {
        return $0.reduce(0, +)
    }

    for sum in sumCombi {
        let rootSquare = Int(sqrt(Double(sum))) + 1

        for i in 2...rootSquare {
            if sum % i == 0 {
                break
            }
            if i == rootSquare {
                count += 1
            }
        }
    }

    return count
}

private func getCombination(_ nums: [Int], k: Int) -> [[Int]] {
    // 후보 수보다 k가 적을 때: 아무런 집합도 return하지 않음 []
    if k > nums.count { return [] }
    
    // 후보는 있지만 아무것도 안뽑을 때: 공집합을 return
    if k == 0 { return [[]] }

    //후보의 수와 k가 같을 때: 전체 return
    if k == nums.count { return [nums] }

    let fix = nums[0]
    let remain = Array(nums[1...])
    let subCombi = getCombination(remain, k: k-1)
    let subCombi2 = getCombination(remain, k: k)

    return subCombi.map { [fix] + $0 } + subCombi2
}
