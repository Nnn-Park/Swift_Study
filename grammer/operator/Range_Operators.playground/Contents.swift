import UIKit

//              <범위 연산자(Range Operators)>
//  범위 연산자: 스위프트에서 숫자의 범위를 간편하게 표시할 때 사용


let numbers = 1...10


// Closed Range Operator(닫힌 범위 연산자), One-Sided Range의 표기

let range = 1...10 // ClosedRange<Int>

let range1 = ...10 // PartialRangeThrough<Int>

let range2 = 1... // PartialRangeFrom<Int>

// Half-Open Range Operator(반 개방 범위 연산자), One-Sided Ranges의 표기

let rangeH = 1 ..< 10 // Range<Int>

let rangeH2 = ..<10 // PartialRangeUpTo<Int>

// One-Sided 표기시에는 숫자와 범위 연산자를 붙여서 써야함


var age = 22

switch age {
case 10...19:
    print("10대 입니다.")
case 20...29:
    print("20대 입니다.")
case 30...39:
    print("30대 입니다.")
default:
    print("그 외의 연령")
}


var point = (1, 2)

switch point {
case (0, 0):
    print("원점 위에 있다.")
case (-2...2, -2...2):
    print("(\(point.0), \(point.1))은 원점 주위에 있다.")
default:
    print("점은 (\(point.0), \(point.1))에 위치한다.")
}

//                  <패턴 매칭 연산자>
//          숫자가 범위내에 있는지 확인하는 연산자

let range3 = 1...10

range3 ~= 5 // 참 또는 거짓

var age2 = 30

if 30...39 ~= age {
    print("30대 입니다.")
}


// 스위치문은 내부적으로 패턴매칭 연산자로 구현이 되어있음


switch age2 {
case 30...39:
    print("30대 입니다.")
default:
    break
}
