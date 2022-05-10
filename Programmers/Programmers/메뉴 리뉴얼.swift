import Foundation

func mySolutionOf메뉴리뉴얼(_ orders: [String],_ course: [Int]) -> [String] {
    var returnArray = [String]()
    var courseDictionary = [String: Int]() // 각 메뉴의 조합이 주문되는 횟수를 저장하는 Dic.
    
    for _course in course {
        let filteredOrders = orders.filter {$0.count >= _course} // orders 중 _cource보다 짧은 주문은 _cource 크기의 주문이 될 수 없기 때문에 제거해주고 시작
        filteredOrders.forEach {
            let orderedMenu = dfs(with: $0, count: _course) // orders의 각 요소를 이용해 만들 수 있는 모든 메뉴 조합을 구하기 -> DFS (처음에는 Combination을 구현해 메뉴 조합을 구해보려고 하다가, 자료구조로 접근하는 방법이 더 좋다고 생각해 DFS 사용)
            orderedMenu.forEach { menu in // 찾아낸 모든 메뉴 조합을 courseDictionary에 추가해주는데, 이미 존재하는 key의 value는 +1 해주도록, 존재하지 않았던 key의 value는 1이 되도록
                courseDictionary[menu] = (courseDictionary[menu] ?? 0) + 1
            }
        }
        var filteredCourseDic = courseDictionary
            .filter {$0.key.count == _course && $0.value >= 2} // course의 크기와 같고 2번 이상 주문된 key만 남기기
            .sorted {$0.value > $1.value} // value의 크기가 큰 key가 앞에 오도록 sort

        if filteredCourseDic.count >= 1 { // course에 맞는 key가 하나도 없는 경우가 존재하여 해당 if문 추가
            let target = filteredCourseDic.removeFirst() // value가 제일 큰 key만
            returnArray.append(target.key)               // returnArray에 추가해주기

            while filteredCourseDic.contains(where: {$0.value == target.value}) { // value가 제일 큰 key가 여러개일 때
                returnArray.append(filteredCourseDic.removeFirst().key)           // 모두 returnArray에 추가해주기
            }
        }
    }
    return returnArray.sorted() // 사전 순으로 오름차순 정렬
}

fileprivate func dfs(with str: String, count: Int) -> [String] {
    var array = [String]()
    if count <= 1 {
        array.append(contentsOf: str.map({String($0)}))
        return array
    }
    var arr = Array(str) // 1. "ABCFG", count == 2 인 경우 // 2. "ABCFG", count == 3 인 경우
    
    while !arr.isEmpty {
        let digit = String(arr.removeFirst()) // 1. "A" // 2. "A"
        let string = String(arr) // 1. "BCFG" // 2. "BCFG"
        let new = dfs(with: string, count: count - 1) // 1. new = "B"/ "C"/ "F"/ "G" (다음 depth의 dfs에서는 if count <= 1 문에 걸리기 때문에 각각의 요소가 넘어옴) // 2. "BCFG" 중 2개로 만들 수 있는 조합이 넘어옴
        array += new.map { // 1. "AB", "AC", "AF", "AG" 로 만들어서 array에 넣어주기  // 2. "A+(BCFG중 2개로 만든 조합)" 을 array에 넣어주기
            String((digit + $0).sorted())
        }
    } // 1. "BCFG"만 가지고 while문 한 번 더 반복 // 2. "BCFG"만 가지고 while문 한 번 더 반복
    return array
} // 1. AB, AC, AF, AG, BC, BF, BG, CF, CG, FG 이렇게 ABCFG의 순서를 지키면서 count(==_course(2))에 맞는 조합을 반환 // 2. ABC, ABF, ABG, ACF, ACG, AFG, BCF, BCG, BFG, CFG 이렇게 ABCFG의 순서를 지키면서 count(3)에 맞는 조합을 반환
