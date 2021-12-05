//
//  체육복.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/05.
//

import Foundation

func gymClothes (_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var numberOfClothes = Array<Int>(repeating: 1, count: n)
    let lost = lost.sorted()
    let reserve = reserve.sorted()
    lost.forEach {
        numberOfClothes[$0-1] -= 1
    }
    reserve.forEach {
        numberOfClothes[$0-1] += 1
    }
    if numberOfClothes[0] == 0 && numberOfClothes[1] == 2 {
        numberOfClothes[0] += 1
        numberOfClothes[1] -= 1
    }
    if numberOfClothes[n-1] == 0 && numberOfClothes[n-2] == 2 {
        numberOfClothes[n-1] += 1
        numberOfClothes[n-2] -= 1
    }
    for index in 1..<numberOfClothes.count-1 {
        if numberOfClothes[index] == 0 {
            if numberOfClothes[index-1] == 2 {
                numberOfClothes[index-1] -= 1
                numberOfClothes[index] += 1
            } else if numberOfClothes[index+1] == 2 {
                numberOfClothes[index+1] -= 1
                numberOfClothes[index] += 1
            }
        }
    }
    
    return numberOfClothes.filter({$0 >= 1}).count
}
