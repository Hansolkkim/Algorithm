//
//  베스트앨범.swift
//  Programmers
//
//  Created by 김한솔 on 2022/07/18.
//

import Foundation

func 베스트앨범(_ genres: [String],_ plays: [Int]) -> [Int] {
    var albumMap: [String : [(index: Int, plays: Int)]] = [:]
    var res = [Int]()

    for index in plays.indices {
        albumMap[genres[index]] = (albumMap[genres[index]] ?? []) + [(index: index, plays: plays[index])]
    }

    let sortedAlbumMap = albumMap.sorted { first, second in
        first.value
            .map { $0.plays }
            .reduce(0) { $0 + $1 }
        >
        second.value
            .map { $0.plays }
            .reduce(0) { $0 + $1 }
    }.filter {
        $0.value.count >= 2
    }

    print(sortedAlbumMap)
    sortedAlbumMap.forEach { album in
        let sortedAlbum = album.value.sorted { $0.plays > $1.plays || $0.index < $1.index }
        print(sortedAlbum)
        res.append(sortedAlbum[0].index)
        if sortedAlbum.count > 1 {
            res.append(sortedAlbum[1].index)
        }
    }

    return res
}
