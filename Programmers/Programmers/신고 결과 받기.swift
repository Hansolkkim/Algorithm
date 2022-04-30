import Foundation

func mySolutionOf신고_결과_받기(_ id_list: [String],_ report: [String],_ k: Int) -> [Int] {
    var reportDic = [String: Int]()
    var idDic = [String: [String]]()
    let setOfReport = Set(report)

    setOfReport.forEach {
        let target = $0.components(separatedBy: " ")
        let from = target[0], to = target[1]

        reportDic[to] = (reportDic[to] ?? 0) + 1
        idDic[from] = (idDic[from] ?? []) + [to]
    }

    return id_list.map { id in
        (idDic[id] ?? []).reduce(0) {
            $0 + ((reportDic[$1] ?? 0) >= k ? 1 : 0)
        }
    }
}
