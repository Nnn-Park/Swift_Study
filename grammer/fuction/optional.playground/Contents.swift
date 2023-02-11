import UIKit


//                  Optionals(옵셔널)


// 개념과 이해

// 스위프트는 왜 옵셔널이라는 개념을 도입했을까?
// 모든 프로그래밍에서 아래와 같은 상황은 항상 골치거리임


var yourName: String?    // 선언
yourName = "홍길동"        // 값을 저장하지 않는다면

print(yourName)




//      Type(타입)

// 지금까지의 타입 선언

let name: String = "Jobs"           // 명시적
let newName = "Musk"                // 암시적
let myAge = 20                      // 암시적
let myGrade: Double = 3.14          // 명시적

// myAge = nil      // ?가 없으므로

//              Optional Type(옵셔널 타입)

// 모든 타입의 뒤에 ? 물음표를 붙이면 옵셔널 타입이 된다.

var num: Int? = 3
var yourAge: Int? = nil
// var yourAge: Int = nil    // 추론 불가능하므로 반드시 타입을 명시적으로 선언을 해야한다.
var yourGrade: Double? = nil
var name1: String? = "Jobs"

// 정식문법 표기

let num1: Int? = 2
let num2: Optional<Int> = 0         // 정식문법

var name5: String? = "Nnn"
print(name5)  // Optional(Nnn)

name5 = nil
print(name5)  // nil


// 연습문제

var number: Int? = 7
var hello: String? = "안녕하세요"
var myName: String? = "Nnn"
var newNum: Double? = 5.5

print(number)
print(hello)
print(myName)
print(newNum)

if let num3 = number {
    print(num3)
}

if let hi = hello {
    print(hi)
}

if let n = myName {
    print(n)
}

if let nNum = newNum {
    print(nNum)
}

func doPrint(num: Int?) {
    guard let n = num else { return }
    print(n)
}

doPrint(num: number)
