//
//  내적.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/12.
//

import Foundation

func dotProduct(_ a: [Int],_ b: [Int]) -> Int {
    return a.enumerated().map {
        return $0.element * b[$0.offset]
    }.reduce(0, +)
    
    //return zip(a,b).map(*).reduce(0, +)
}
