//
//  Number Line Jumps.swift
//  Hackerrank
//
//  Created by κΉνμ on 2021/12/04.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    return v1 > v2 ? (x2 - x1) % (v1 - v1) == 0 ? "YES" : "NO" : "NO"
}
