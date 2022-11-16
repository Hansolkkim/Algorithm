//
//  이중우선순위큐.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/20.
//

import Foundation

func 이중우선순위큐(_ operations: [String]) -> [Int] {
    var queue: [Int] = []

    for operation in operations {
        let command = operation.components(separatedBy: " ")

        switch command[0] {
        case "D":
            if operation.contains("-") {
                var tempQueue = queue.sorted(by: >)
                _ = tempQueue.popLast()
                queue = tempQueue
            } else {
                var tempQueue = queue.sorted(by: <)
                _ = tempQueue.popLast()
                queue = tempQueue
            }
        case "I":
            queue.append(Int(command[1])!)
        default:
            continue
        }
    }

    return [queue.max() ?? 0, queue.min() ?? 0]
}

func 이중우선순위큐2(_ operations: [String]) -> [Int] {
    let minHeap = Heap()
    let maxHeap = Heap()

    for operation in operations {
        if operation.hasPrefix("I") {
            let value = Int(operation.components(separatedBy: " ")[1])!
            minHeap.push(value)
            maxHeap.push(-value)
        } else if !minHeap.isEmpty && operation == "D 1" {
            minHeap.remove(-maxHeap.pop())
        } else if !maxHeap.isEmpty && operation == "D -1" {
            maxHeap.remove(-minHeap.pop())
        }
    }

    return minHeap.isEmpty ? [0, 0] : [-maxHeap.pop(), minHeap.pop()]
}

fileprivate class Heap {
    var elements = [0]

    var isEmpty: Bool {
        return elements.count == 1
    }

    func push(_ value: Int) {
        elements.append(value)
        var currentIndex = elements.count - 1
        var parentIndex = Int(currentIndex/2)

        while parentIndex != 0 && elements[parentIndex] > value {
            elements.swapAt(parentIndex, currentIndex)
            currentIndex = parentIndex
            parentIndex = Int(currentIndex / 2)
        }
    }

    func pop() -> Int {
        if elements.count == 2 {
            return elements.removeLast()
        }

        let returnValue = elements[1]
        elements[1] = elements.removeLast()

        let count = elements.count
        var currentIndex = 1
        var leftIndex = 2
        var rightIndex = 3

        while leftIndex < count && elements[currentIndex] > elements[leftIndex] ||
                rightIndex < count && elements[currentIndex] > elements[rightIndex] {

            if rightIndex >= count || elements[leftIndex] < elements[rightIndex] {
                elements.swapAt(currentIndex, leftIndex)
                currentIndex = leftIndex
            } else {
                elements.swapAt(currentIndex, rightIndex)
                currentIndex = rightIndex
            }
            leftIndex = currentIndex * 2
            rightIndex = currentIndex * 2 + 1
        }
        return returnValue
    }

    func remove(_ ele: Int) {
        let index = elements.firstIndex(of: ele)!
        elements.remove(at: index)
    }
}
