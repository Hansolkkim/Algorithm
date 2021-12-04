//
//  p11654.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func printASCII() {
    let inputChar = Character(readLine()!)
    let valueASCII = inputChar.asciiValue! //Character를 해당 ASCII code로 변환해주는 메서드
    print(valueASCII)
}
