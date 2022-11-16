//
//  배달.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/19.
//

import Foundation

func 배달(_ N: Int,_ road: [[Int]],_ k: Int) -> Int {
    let max = 500000
    var distances = [Int](repeating: max, count: N + 1)

    func getShortestDistance(distances: inout [Int], start: Int, n: Int) {
        distances[start] = 0
        var cursor = -1
        var queue = [start] // 우선 순위 큐

        while cursor < queue.count - 1 {
            cursor += 1
            let startVillage = queue[cursor] // 큐에서 추출된 값

            for route in road {
                
                if route[0] != startVillage && route[1] != startVillage { continue }

                let destination = (route[0] == startVillage) ? route[1] : route[0]
                let currDistance = distances[startVillage] + route[2]

                if currDistance < distances[destination] {
                    distances[destination] = currDistance

                    queue.append(destination)
                }
            }
        }
    }

    getShortestDistance(distances: &distances, start: 1, n: N)

    return distances.filter({$0 <= k}).count
}
