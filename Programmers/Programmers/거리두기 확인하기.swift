import Foundation

func mySolutionOf거리두기확인하기(_ places: [[String]]) -> [Int] {
    // 거리 확인 -> DFS를 이용 (거리 2 이내로만) (BFS를 사용해도 되지만, DFS로 재귀를 이용해서 풀면 뭔가 풀이 시간이 짧아지는 듯한 느낌을 이전에 받아서 DFS를 선택)
    var result = [Int](repeating: 1, count: 5)

    for (_index, place) in places.enumerated() { // 각 대기실마다 실행
        var place = place
        
    Outer: for y in 0..<5 {
            for x in 0..<5 {
                if place[y][x] == "P" {
                    place[y][x] = "O"
                    result[_index] = dfs(x: x, y: y, place: place, depth: 1) > 0 ?
                    0 : 1
                    if result[_index] == 0 { // 한명이라도 거리두기를 지키지 않으면
                        break Outer          // 이번 대기실의 거리두기는 실패 -> OuterLoop를 break 시킴
                    }
//                    if dfs(x: x, y: y, place: place, depth: 1) > 0 { // 2번째 방법인데, 어떤게 더 좋을지 모르겠음
//                        result[_index] = 0
//                        break Outer
//                    }
                }
            }
        }
    }
    return result
}

fileprivate extension String { // String을 배열처럼 사용하기 위해 + setter 제공을 위해 String extension
    subscript(_ index: Int) -> String {
        get {
            return String(self[self.index(self.startIndex, offsetBy: index)])
        }
        set { // setter를 어떻게 이쁘게 나타낼 수 있을까? -> Refactoring 필요
            var array = Array(self)
            array[index] = String.Element(newValue)
            self = String(array)
        }
    }
}

fileprivate func dfs(x: Int, y: Int, place: [String], depth: Int) -> Int {
    if depth > 2 { // 거리 2 이내로만 dfs 진행
        return 0
    }

    var place = place
    var count = 0

    for d in [(x: 1, y: 0), (x: -1, y: 0), (x: 0, y: 1), (x: 0, y: -1)] { // 한 점으로부터 거리가 1인 네 방향 모두 탐색
        let (nextX, nextY) = (x + d.x, y + d.y)
        
        if (0..<5).contains(nextX) && (0..<5).contains(nextY) { // nextX, nextY가 5x5 배열 내에 있는지 확인 (배열 내에 없으면 검사 안해)
            if place[nextY][nextX] == "P" {
                place[nextY][nextX] = "O"
                count += 1
            }
            if place[nextY][nextX] != "X" { // place[nextY][nextX] == "X" 라면 해당 방향으로의 dfs는 더이상 진행X
                count += dfs(x: nextX, y: nextY, place: place, depth: depth + 1)
            }
        }
    }
    return count
}
