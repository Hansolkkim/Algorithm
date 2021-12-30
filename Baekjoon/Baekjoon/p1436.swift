//
//  p1436.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/30.
//

import Foundation

func minimumNumberIncluding666() {
    let order = readLine()!
    var count = 0, num = 665
    while true {
        if count == Int(order)! {break}
        num += 1
        let numChar = String(num)
        var discrimination = 0
        for i in numChar {
            if i == "6" {discrimination += 1}
            else {discrimination = 0}
            if discrimination == 3 {count += 1}
        }
    }
    print(num)
}
