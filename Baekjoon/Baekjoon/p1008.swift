//
//  p1008.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func divideTwoThings() {
    let input: String? = readLine()
    
    if (input?.count == 3) || (input?.count == 4) {
        let A = Double(input?.split(separator: " ")[0] ?? "0")!,
            B = Double((input?.split(separator: " ")[1] ?? "0")!)
        print(A / B!)
    }else {
        print("Error")
    }
}
