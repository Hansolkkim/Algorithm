//
//  main.swift
//  Programmers
//
//  Created by 김한솔 on 2021/12/04.
//

import Foundation

//문제 "나누어 떨어지는 숫자 배열" 출력
print(dividableNumArr([2, 36, 1, 3], 1))

//문제 "크레인 인형뽑기 게임" 출력
print(clawMachine([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

//문제 "두 개 뽑아서 더하기" 출력
print(plusTwoElement([5,0,2,7]))

//문제 "모의고사" 출력
print(determineWinner([1,3,2,4,2]))

//문제 "2016년" 출력
print(dayIn2016(5, 24))

//문제 "약수의 합" 출력
print(sumOfAliquot(12))

//문제 "K번째수" 출력
print(kthNumber([1,5,2,6,3,7,4], [[2,5,3], [4,4,1], [1,7,3]]))

//문제 "없는 숫자 더하기" 출력
print(plusUnexistNumber([1,2,3,4,6,7,8,0]))

//문제 "체육복" 출력
print(gymClothes(6, [1,3,5], [2,4,6]))

//문제 "최소직사각형" 출력
print(getMinSquare([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))

//문제 "나머지가 1이 되는 수 찾기" 출력
print(findNumber(10))

//문제 "부족한 금액 계산하기" 출력
print(calculatorShorfall(3, 20, 4))

//문제 "비밀지도" 출력
print(interpretSecretMap(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))

//문재 "내적" 출력
print(dotProduct([-1,0,1], [1,0,-1]))

//문제 "3진법 뒤집기" 출력
print(convertTenaryAndReversedNum(125))

//문제 "가운데 글자 가져오기" 출력
print(pickMiddleChar("abcd"))

//문제 "로또의 최고 순위와 최저 순위" 출력
print(highestAndLowestRankInLotto([44,1,0,0,31,25], [31,10,45,1,6,19]))

//문제 "신규 아이디 추천" 출력
print(recommendNewID("123_.def"))

//문제 "키패드 누르기" 출력
print(pushKeyPad([1,2,3,4,5,6,7,8,9,0], "right"))

//문제 "숫자 문자열과 영단어" 출력
print(replaceEngToNum("one4seveneight"))

//문제 "짝지어 제거하기" 출력
print(isRemovable("baabaa"))

//문제 "튜플" 출력
print(extractTuple("{{1,2,3},{2,1},{1,2,4,3},{2}}"))

//문제 "프린터" 출력
print(getPrintedOrder([2,4,8,2,9,3,3], 4))

//문제 "괄호 변환" 출력
print(converseParenthesis("()))((()"))

//문제 "소수 찾기" 출력
print(findPrimeNum("1234"))

//문제 "이상한 이름 만들기" 출력
print(makeOddString("try hello world"))

//문제 "타겟 넘버" 출력
print(mySolutionOf타겟넘버(numbers: [1,1,1,1,1], target: 3))

// 문제 "메뉴 리뉴얼" 출력
print(mySolutionOf메뉴리뉴얼(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))

//문제 "신고 결과 받기" 출력
print(mySolutionOf신고_결과_받기(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

//문제 "거리두기 확인하기" 출력
print(mySolutionOf거리두기확인하기([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))

// 문제 "후보키" 출력
print(mySolutionOf후보키([["a", "aa"], ["aa", "a"], ["a", "a"]]))

// SkillCheckTest1 출력
print(skillCheckTest1(6))

// SkillCheckTest2 출력
print(skillCheckTest2(-4, 2))

// 방문길이 출력
print(countNewLength("RLLL"))

// 올바른 괄호 출력
print(rightBracket("(()("))

// 기능개발 출력
print(기능개발([93, 30, 55], [1, 30, 5]))

// 영어끝말잇기 출력
print(영어끝말잇기(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

// 베스트앨범 출력
print(베스트앨범(["classic", "pop", "classic", "pop", "classic", "classic"], [400, 600, 150, 2500, 500, 500]))

// 배달 출력
print(배달(5, [[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]], 3))

// 이중우선순위큐 출력
print(이중우선순위큐(["I 16", "I -5643", "D -1", "D 1", "D 1", "I 123", "D -1"]))
