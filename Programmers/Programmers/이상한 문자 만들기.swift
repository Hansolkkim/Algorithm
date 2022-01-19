//
//  이상한 문자 만들기.swift
//  Programmers
//
//  Created by 김한솔 on 2022/01/19.
//

import Foundation

import Foundation

func makeOddString(_ s: String) -> String {
    let words = s.components(separatedBy: .whitespaces)
    var returnString = ""
    for (i,word) in words.enumerated() {
        let arrayOfWord = Array(word)
        arrayOfWord.enumerated().forEach {
            $0.offset % 2 == 0 ? (returnString += $0.element.uppercased()) : (returnString += $0.element.lowercased())
        }
        if i != words.count-1{
            returnString += " "
        }
    }
    return returnString
}
