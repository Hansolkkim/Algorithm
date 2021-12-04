//
//  Grading Students.swift
//  Hackerrank
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

func grading(grades: [Int]) -> [Int] {
    var finalGrade = grades
    for index in 0...finalGrade.count-1 {
        let grade = finalGrade[index]
        let multiples = 5 * (grade / 5 + 1)
        if multiples - grade < 3 && grade >= 38 { finalGrade[index] = multiples }
    }
    return finalGrade
}
