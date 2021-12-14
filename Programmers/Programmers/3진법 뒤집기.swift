//
//  3진법 뒤집기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/14.
//

import Foundation

func convertTenaryAndReversedNum(_ n: Int) -> Int {
    let reversedTenary = String(String(n, radix: 3).reversed())
    return Int(reversedTenary, radix: 3)!
}
