//
//  가운데 글자 가져오기.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/14.
//

import Foundation

func pickMiddleChar(_ s: String) -> String {
    return s.count%2 != 0 ? String(Array(s)[(s.count-1)/2]) : String(Array(s)[(s.count/2)-1...s.count/2])
}
