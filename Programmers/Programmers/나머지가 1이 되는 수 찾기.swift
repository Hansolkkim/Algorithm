//
//  나머지가 1이 되는 수 찾기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/09.
//

import Foundation

func findNumber(_ n:Int) -> Int {
    for min in 1..<n {
        if n % min == 1 {
            return min
        }
    }
    return 0
}
