//
//  방문길이.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/12.
//

import Foundation

func countNewLength(_ dirs: String) -> Int {
    let dirInPositions: [Point] = dirs.compactMap { Direction.init($0)?.rawValue }
    var currentPosition = (x: 0, y: 0)
    var visitedRoute: [Route: Bool] = [:]

    for difference in dirInPositions {
        let movedPosition = (x: currentPosition.x + difference.x, y: currentPosition.y + difference.y)
        let moveState = Route(current: Point(x: currentPosition.x, y: currentPosition.y), next: Point(x: movedPosition.x, y: movedPosition.y))
        let reversedMoveState = Route(current: Point(x: movedPosition.x, y: movedPosition.y), next: Point(x: currentPosition.x, y: currentPosition.y))
        if (-5...5) ~= movedPosition.x && (-5...5) ~= movedPosition.y {
            visitedRoute[moveState] = true
            if visitedRoute[reversedMoveState] != nil {
                visitedRoute[moveState] = nil
            }
            currentPosition = movedPosition
        }
    }

    return visitedRoute.count
}

fileprivate enum Direction {
    case U
    case D
    case R
    case L

    var rawValue: Point {
        switch self {
        case .U:
            return Point(x: 0, y: 1)
        case .D:
            return Point(x: 0, y: -1)
        case .R:
            return Point(x: 1, y: 0)
        case .L:
            return Point(x: -1, y: 0)
        }
    }

    init?(_ string: Character) {
        switch string {
        case "U": self = Direction.U
        case "D": self = Direction.D
        case "R": self = Direction.R
        case "L": self = Direction.L
        default: return nil
        }
    }
}

fileprivate struct Route: Hashable {
    let current: Point
    let next: Point
}

fileprivate struct Point: Hashable {
    let x: Int
    let y: Int
}
