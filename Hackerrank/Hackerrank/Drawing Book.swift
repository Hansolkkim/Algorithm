//
//  Drawing Book.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/15.
//

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    return p/2 > n/2 - p/2 ? n/2 - p/2 : p/2
}
