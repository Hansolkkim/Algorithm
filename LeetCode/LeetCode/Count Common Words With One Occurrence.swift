//
//  Count Common Words With One Occurrence.swift
//  LeetCode
//
//  Created by 김한솔 on 2022/04/04.
//

import Foundation

func countWord(_ words1: [String], _ words2: [String]) -> Int {
    var dic = [String: Int]()
    var word1 = words1
    
    words1.forEach {
        dic[$0] = 0
    }
    
    words2.forEach { word in
        dic.keys.forEach { key in
            if word == key {
                dic[key]! += 1
            }
        }
    }
    
    while !word1.isEmpty {
        let temp = word1.removeFirst()
        
        if word1.contains(where: {
            temp == $0
        }) {
            if dic[temp]! == 1 {
                dic[temp]! = 0
            }
        }
    }
    
    return dic.filter{ key, value in
        value == 1
    }.count
}
