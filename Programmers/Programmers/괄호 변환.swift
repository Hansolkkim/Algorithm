//
//  괄호 변환.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/28.
//

import Foundation

func converseParenthesis(_ p: String) -> String {
    var p = p, cntLeft = 0, cntRight = 0, u = "", tmp = "", conversed = ""
    while !p.isEmpty {
        u += String(p.removeFirst())
        if u.last == "(" {cntLeft += 1}
        else {cntRight += 1}
        if cntRight == cntLeft {break}
    }
    var v = p
    if isRightParenthesis(u) {
        if v != "" {
            v = converseParenthesis(v)
        }
        return u + v
    } else {
        tmp = "(" + converseParenthesis(v) + ")"
        u.removeFirst()
        u.removeLast()
        for i in u.indices {
            conversed.append(u[i] == "(" ? ")" : "(")
        }
        tmp += conversed
    }
    return tmp
}

func isRightParenthesis(_ str: String) -> Bool {
    var str = str, tmp = ""
    while !str.isEmpty {
        if tmp.isEmpty {
            tmp += String(str.removeFirst())
        } else {
            if tmp.last == "(" && str.first == ")" {
                tmp.removeLast()
                str.removeFirst()
            } else {
                tmp += String(str.removeFirst())
            }
        }
    }
    return tmp == "" ? true : false
}
