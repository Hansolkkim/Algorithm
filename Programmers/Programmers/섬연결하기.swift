//
//  섬연결하기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/08/02.
//

import Foundation

func 섬연결하기(_ n: Int, _ costs: [[Int]]) -> Int {
    var parentArray = (0..<n).map { $0 }

    let sortedCosts = costs.sorted { $0[2] < $1[2] }
    var sum = 0
    var count = 0

    for bridge in sortedCosts {
        if !isCycle(from: bridge[0], to: bridge[1], parentArray: parentArray) {
            let newParent = findParent(child: bridge[1], parentArray: parentArray)
            let oldParent = findParent(child: bridge[0], parentArray: parentArray)

            parentArray.indices.filter {
                parentArray[$0] == oldParent
            }.forEach {
                parentArray[$0] = newParent
            }
            parentArray[bridge[0]] = newParent

            sum += bridge[2]
            count += 1
        }
        if count >= n - 1 {
            break
        }
    }
    
    print(parentArray)
    return sum
}

fileprivate func isCycle(from: Int, to: Int, parentArray: [Int]) -> Bool {
    return parentArray[from] == parentArray[to] ? true : false
}

fileprivate func findParent(child: Int, parentArray: [Int]) -> Int {
    return parentArray[child] == child ? child : findParent(child: parentArray[child], parentArray: parentArray)
}
