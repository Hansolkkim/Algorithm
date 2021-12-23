//
//  튜플.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/23.
//

import Foundation

func extractTuple(_ s: String) -> [Int] {
    var returnArray = [Int]()
    let myCharacterSet = CharacterSet(charactersIn: "{}")
    let extractedArray = s.components(separatedBy: myCharacterSet).filter{!$0.isEmpty && $0 != ","}.sorted{$0.count < $1.count}
    for index in extractedArray.indices {
        let temp = extractedArray[index].components(separatedBy: ",")
        temp.forEach {
            if !returnArray.contains(Int($0)!) {
                returnArray.append(Int($0)!)
            }
        }
    }
    return returnArray
}
