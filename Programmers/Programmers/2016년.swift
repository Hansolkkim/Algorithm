//
//  2016년.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func dayIn2016(_ a: Int,_ b: Int) -> String {
    let day = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let month = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let myDay = month[0..<a].reduce(b, +)
    return day[myDay % 7]
}
