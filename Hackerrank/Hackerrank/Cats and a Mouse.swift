//
//  Cats and a Mouse.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/14.
//

import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    if abs(x-z) != abs(y-z) {
        return abs(x-z) > abs(y-z) ? "Cat B":"Cat A"
    }
    return "Mouse C"
}
