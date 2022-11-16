//
//  게임맵최단거리.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/27.
//

import Foundation

func 게임맵최단거리(_ maps: [[Int]]) -> Int {
    var maps = maps
    let n = maps.count, m = maps[0].count
    var distances = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    distances[0][0] = 1
    var toVisitQueue = [(x:0 , y: 0)]
    var cursor = -1
    
    while cursor < toVisitQueue.count - 1 {
        cursor += 1
        let position = toVisitQueue[cursor]
        
        for diff in [(x: 1, y: 0), (x: -1, y: 0), (x: 0, y: 1), (x: 0, y: -1)] {
            let (nextX, nextY) = (position.x + diff.x, position.y + diff.y)
            
            if (0..<n).contains(nextY) && (0..<m).contains(nextX) && maps[nextY][nextX] == 1 {
                maps[nextY][nextX] = 0
                toVisitQueue.append((nextX, nextY))
                distances[nextY][nextX] = distances[position.y][position.x] + 1
            }
        }
    }

    return distances[n-1][m-1] == 0 ? -1 : distances[n-1][m-1]
}
