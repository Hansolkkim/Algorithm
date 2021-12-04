//
//  약수의 합.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func sumOfAliquot (_ n: Int) -> Int {
    guard n != 0 else { return 0 }
    return (1...n).filter{ n % $0 == 0 }.reduce(0, +)
}
