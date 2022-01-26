//
//  Time Conversion.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func timeConversion(s: String) -> String{
    let hour = Int(s.prefix(2))!
    var wholeTime = String(s.dropLast(2))
    
    switch s.hasSuffix("PM") {
    case true:
        if hour != 12 {
            wholeTime = "\(hour+12)" + wholeTime.dropFirst(2)
        }
    case false:
        if hour == 12 {
            wholeTime = "00" + wholeTime.dropFirst(2)
        }
    }
    return wholeTime
}
