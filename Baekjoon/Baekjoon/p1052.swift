//
//  p1052.swift
//  Baekjoon
//
//  Created by 김한솔 on 2022/01/05.
//

import Foundation

func getMinBottleTobuy() {
    func dec2bin(_ dec: Int) -> [Int] {
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
    var count1 = 0
    var numberOfBoughtBottle = 0
    dec2bin(n).forEach{
        count1 += $0 == 1 ? 1 : 0
    }
    while count1 > k {
        let plus = NSDecimalNumber(decimal: pow(2, dec2bin(n).firstIndex(of: 1)!)).intValue
        n += plus
        numberOfBoughtBottle += plus
        count1 = 0
        dec2bin(n).forEach{
            count1 += $0 == 1 ? 1 : 0
        }
    }
    print(numberOfBoughtBottle)
}

