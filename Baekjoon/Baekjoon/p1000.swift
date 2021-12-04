//
//  p1000.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func plusTwoThings() {
    let input: String? = readLine() //키보드로 입력되는 String이 Optional 이기 때문에 input 상수의 데이터타입을 String?으로 지정

    if (input?.count == 3) || (input?.count == 4) {
        
        let A = Int(input?.split(separator: " ")[0] ?? "0")!,
            B = Int((input?.split(separator: " ")[1] ?? "0")!)
        //띄워쓰기를 기준으로 input을 두 변수(A,B)에 지정
        print( A + B! ) //A, B값이 Optional 이기 때문에 A+B!로 print
        
    }else {
        
        print("Error")
        
    }
}
