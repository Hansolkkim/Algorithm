//
//  Electronics Shop.swift
//  Hackerrank
//
//  Created by 김한솔 on 2022/01/04.
//

import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var spentArray = [Int]()
    
    for keyboard in keyboards {
        let drivesCanBuy = drives.filter{$0 + keyboard <= b}
        if let tmp = drivesCanBuy.sorted().last {
            spentArray.append(tmp + keyboard)
        }
    }
    return spentArray.isEmpty ? -1 : spentArray.sorted(by: >)[0]
}
