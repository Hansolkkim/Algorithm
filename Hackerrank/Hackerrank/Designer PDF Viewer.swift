//
//  Designer PDF Viewer.swift
//  Hackerrank
//
//  Created by κΉνμ on 2021/12/15.
//

import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    let wordArray = word.map{h[Int($0.asciiValue! - Character("a").asciiValue!)]}
    return wordArray.max()! * wordArray.count
}
