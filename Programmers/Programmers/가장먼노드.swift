//
//  가장먼노드.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/20.
//

import Foundation

func 가장먼노드(_ n: Int, _ edge: [[Int]]) -> Int {
    var connectedVillageMap = [Int: [Int]]() // 인접 리스트 사용

    edge.forEach {
        connectedVillageMap[$0[0]] = (connectedVillageMap[$0[0]] ?? []) + [$0[1]]
        connectedVillageMap[$0[1]] = (connectedVillageMap[$0[1]] ?? []) + [$0[0]]
    }

    func bfs() -> [Int] {
        var needVisits: [(village: Int, distance: Int)] = [(1, 0)] // 다음에 들릴 마을 저장하는 큐
        var distances = [Int](repeating: -1, count: n + 1) // 1번 마을로부터 각 마을의 거리를 저장할 배열
        distances[1] = 0
        var cursor = -1

        while cursor < needVisits.count - 1 {
            cursor += 1
            let (village, distance) = needVisits[cursor] // (이번 반복문에서 기준이 될 마을, 그 마을에서 1번 마을까지의 거리)

            for nextVillage in connectedVillageMap[village]! {
                if distances[nextVillage] != -1 { continue } // 다음 들를 마을이 이미 계산이 완료된 마을이라면 중지

                distances[nextVillage] = distance + 1 // 다음에 들를 마을까지의 거리 = 현재 기준이 된 마을로부터 1번 마을까지의 거리 + 1
                needVisits.append((nextVillage, distance + 1)) // 다음 반복문에서 들러서, 해당 마을에서 갈 수 있는 마을까지의 거리를 구하기 위해 큐에 담기
            }
        }

        return distances
    }

    let distances = bfs()
    let max = distances.max()!

    return distances.filter { $0 == max }.count
}
