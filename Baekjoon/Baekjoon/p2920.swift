//
//  p2920.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func scaleNotation() {
    
    let input: String = readLine() ?? "" //키보드로 입력되는 값이 Optional 하기 때문에, 입력 값이 없을 경우 ""를 input에 대입
    let inputArray = input.components(separatedBy: " ").map{ (value:String) -> Int in return Int(value)! }
    //입력된 input을 띄워쓰기를 기준으로 나누고, 나눈 값(String)을 Int로 변환 후 배열로 만들어 inputArray에 입력
    
    if inputArray == inputArray.sorted() { //inputArray의 원소가 sorted된 상태와 일치하면 (문제의 조건에 1~8의 숫자만 사용한다하여 이와 같은 조건 사용)
        print("ascending")
    }else if inputArray == inputArray.sorted(by: >) { //inputArray의 원소가 역방향 sorted된 상태라면
        print("dscending")
    }else {
        print("mixed")
    }
}
