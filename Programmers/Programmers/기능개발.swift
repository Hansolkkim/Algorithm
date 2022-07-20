//
//  기능개발.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/13.
//

import Foundation

func 기능개발(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var answer = [Int]()
    var index = 0
    var count = 1
    var pointer = 1
    let times = zip(progresses, speeds).map { progress, speed in
        (100 - progress - 1) / speed + 1
    }

    while index < times.count {
        if pointer == times.count {
            answer.append(count)
            break
        }
        if times[pointer] <= times[index] {
            count += 1
            pointer += 1
        } else {
            answer.append(count)
            if count != 1 {
                index = pointer
            } else {
                index += 1
            }
            count = 1
            pointer = index + 1
        }
    }

    return answer
}
