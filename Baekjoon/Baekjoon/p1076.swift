//
//  p1076.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func printR() {
    let color2R = ["black" : 0, "brown" : 1, "red" : 2, "orange" : 3, "yellow" : 4,
                   "green" : 5, "blue" : 6, "violet" : 7, "grey" : 8, "white" : 9]
    var colorArray = [String]()
    for _ in 1...3 {
        colorArray.append(readLine()!)
    }
    print((color2R[colorArray[0]]! * 10 + color2R[colorArray[1]]!) * Int(pow(Double(10), Double(color2R[colorArray[2]]!))))
}

