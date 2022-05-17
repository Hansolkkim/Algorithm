import Foundation

func mySolutionOf후보키(_ relation: [[String]]) -> Int {
    let maxColumnsNumber = relation[0].count
    var count = 0

    for columnNumber in 1...maxColumnsNumber {
        let numbers = Array((0..<maxColumnsNumber))
        let columnComb = combination(count: columnNumber, array: numbers)
        columnComb.forEach {
            if 유일성검사(index: $0, relation: relation) && 최소성검사(index: $0, relation: relation){
                count += 1
            }
        }
    }
    return count
}

fileprivate func combination(count: Int, array: [Int]) -> [[Int]] {

    if count == 1 {
        return array.map{[$0]}
    }

    if array.isEmpty {
        return []
    }

    var array = array
    let first = array.removeFirst()
    let sub1 = combination(count: count-1, array: array)
    let sub2 = combination(count: count, array: array)

    return sub1.map{
        var new = $0
        new.insert(first, at: 0)
        return new
    } + sub2
}

fileprivate func 유일성검사(index: [Int], relation: [[String]]) -> Bool {
    var tempArray = [String]()

    for tmp in relation {
        var string = ""
        index.forEach {
            string += "\(tmp[$0]) "
        }
        _ = string.popLast()

        if tempArray.contains(string) {
            return false
        } else {
            tempArray.append(string)
        }
    }
    return true
}

fileprivate func 최소성검사(index: [Int], relation: [[String]]) -> Bool {
    for i in 0..<index.count {
        var index = index
        index.remove(at: i)
        if 유일성검사(index: index, relation: relation) {
            return false
        }
    }
    return true
}
