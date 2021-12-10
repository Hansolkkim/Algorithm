//
//  비밀지도.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/09.
//

import Foundation

func interpretSecretMap(_ n: Int,_ arr1: [Int],_ arr2: [Int]) -> [String] {
    var str1 = [String](repeating: "", count: n), str2 = [String](repeating: "", count: n)
    for i in 0..<n {
        var temp = arr1[i]
        while temp != 0 {
            str1[i].append(String(temp%2))
            temp = temp/2
        }
        str1[i] = String(str1[i].reversed())
        while str1[i].count != n {
            str1[i].insert("0", at: str1[i].index(str1[i].startIndex, offsetBy: 0))
        }
    }
    for i in 0..<n {
        var temp = arr2[i]
        while temp != 0 {
            str2[i].append(String(temp%2))
            temp = temp/2
        }
        str2[i] = String(str2[i].reversed())
        while str2[i].count != n {
            str2[i].insert("0", at: str2[i].index(str2[i].startIndex, offsetBy: 0))
        }
    }
    var returnStr = [String](repeating: "", count: n)
    for i in 0..<n {
        for j in 0..<n {
            let a = str1[i][str1[i].index(str1[i].startIndex, offsetBy: j)]
            let b = str2[i][str2[i].index(str2[i].startIndex, offsetBy: j)]
            if a == "1" || b == "1" {
                returnStr[i].append("#")
            } else {
                returnStr[i].append(" ")
            }
        }
    }
    return returnStr
}
