//
//  p1052.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func getMinBottleTobuy() {
    func dec2bin(_ dec: Int) -> [Int] { //리틀엔디안 방식으로 2진수를 만들어주는 내부 함수
        var dec = dec
        var convertedArray = [Int]()
        while dec != 0 {
            convertedArray.append(dec % 2)
            dec /= 2
        }
        return convertedArray
    }
    let input = readLine()!.components(separatedBy: .whitespacesAndNewlines).map{Int($0)!}
    var n = input[0]
    let k = input[1]
    var count1 = 0 //2진수의 1의 개수 count하는 변수
    var numberOfBottleToBuy = 0
    dec2bin(n).forEach{
        count1 += $0 == 1 ? 1 : 0
    }
    while count1 > k {
        let minNumberOfBottleToChangeBin = NSDecimalNumber(decimal: pow(2, dec2bin(n).firstIndex(of: 1)!)).intValue
        n += minNumberOfBottleToChangeBin
        numberOfBottleToBuy += minNumberOfBottleToChangeBin
        count1 = 0
        dec2bin(n).forEach{
            count1 += $0 == 1 ? 1 : 0
        }
    }
    print(numberOfBottleToBuy)
}

