//
//  Save the Prisoner.swift
//  Hackerrank
//
//  Created by κΉνμ on 2022/01/26.
//

import Foundation

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    return (m+s-1)%n == 0 ? n : (m+s-1)%n
}
