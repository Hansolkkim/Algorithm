//
//  Time Conversion.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func timeConversion(s: String) -> String{
    let myCharacterSet: CharacterSet = CharacterSet(charactersIn: ":AMPM")
    let seperatedArr = s.components(separatedBy: myCharacterSet)
    switch s.contains("AM") {
    case true:
        if seperatedArr[0] == "12" {
            return "00:\(seperatedArr[1]):\(seperatedArr[2])"
        } else {
            return "\(seperatedArr[0]):\(seperatedArr[1]):\(seperatedArr[2])"
        }
    case false:
        if seperatedArr[0] == "12" {
            return "\(seperatedArr[0]):\(seperatedArr[1]):\(seperatedArr[2])"
        } else {
            let converted = String(Int(seperatedArr[0])! + 12)
            return "\(converted):\(seperatedArr[1]):\(seperatedArr[2])"
        }
    }
}
