//
//  p8958.swift
//  Baekjoon
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func quizOX() {
    //입력된 값을 Int로 변환
    let howManyTimes = Int(readLine()!)!
    
    for _ in 1...howManyTimes{ //첫 줄에 입력된 값인 howManyTimes 변수의 크기만큼 반복
        let quizResult: String = readLine()!
        var countContinuos: Int = 0, totalScore: Int = 0 //countContinuos변수에 "O"가 연속된 횟수를 저장, totalScore에 총점수를 저장
        for i in quizResult {
            
            if i == "O"{
                countContinuos += 1
                totalScore += countContinuos
            }else {
                countContinuos = 0
            }
            
        }
        
        print(totalScore)
    }
}
