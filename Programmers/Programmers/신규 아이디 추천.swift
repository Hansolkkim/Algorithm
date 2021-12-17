//
//  신규 아이디 추천.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/17.
//

import Foundation

func recommendNewID(_ new_id: String) -> String {
    let myCharacterSet: CharacterSet = CharacterSet.decimalDigits.union(CharacterSet.letters).union(CharacterSet(charactersIn: "-_."))
    var idConvertedByStep = new_id.lowercased() //1단계
    idConvertedByStep = String(idConvertedByStep.unicodeScalars.filter(myCharacterSet.contains)) //2단계
    idConvertedByStep = idConvertedByStep.filter({$0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "."}) //3단계
    let DoubleDot = "([.])\\1"
    //3단계
    while idConvertedByStep.range(of: DoubleDot, options: .regularExpression) != nil{
        if let range = idConvertedByStep.range(of: DoubleDot, options: .regularExpression) {
            idConvertedByStep = idConvertedByStep[idConvertedByStep.startIndex..<range.lowerBound] + "." + idConvertedByStep[range.upperBound...]
        }
    }
    
    //4단계
    if idConvertedByStep.first == "." {
        idConvertedByStep.removeFirst()
    }
    if idConvertedByStep.last == "." {
        idConvertedByStep.removeLast()
    }
    idConvertedByStep = idConvertedByStep.isEmpty ? "a" : idConvertedByStep //5단계
    //6단계
    idConvertedByStep = idConvertedByStep.count > 15 ? String(Array(idConvertedByStep)[..<15]) : idConvertedByStep
    if idConvertedByStep.last == "." {
        idConvertedByStep.removeLast()
    }
    //7단계
    while idConvertedByStep.count <= 2 {
        idConvertedByStep = idConvertedByStep + String(idConvertedByStep.last!)
    }
    return idConvertedByStep
}

