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

        var queue = [start] // 이동 경로 저장될 큐

        while !queue.isEmpty {
            var reversed: [Int] = queue.reversed()
            let startVillage = reversed.removeLast()
            queue = reversed.reversed()

            let filteredRoute = road.filter { $0[0] == startVillage || $0[1] == startVillage }

            for route in filteredRoute {
                let destination = (route[0] == startVillage) ? route[1] : route[0]

                if distances[startVillage] == max { continue }

                let currentDistance = distances[startVillage] + route[2]

                if currentDistance < distances[destination] {
                    distances[destination] = currentDistance

                    queue.append(destination)
                }
            }
        }
    }

    getShortestDistance(distances: &distances, start: 1, n: N)

    return distances.filter({$0 <= k}).count
}
