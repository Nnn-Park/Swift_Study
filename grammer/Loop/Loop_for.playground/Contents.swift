import UIKit

//                          <for문>


// for문의 기본 형태


for i in 1...5 {  // let i
    print(i)
}


for _ in 1...5 {
    print("Hi")
}

for index in 1...5 {
    print("\(index)에 5를 곱한 값은 \(index * 5)입니다.")
}


// 이런 방식으로 많이 활용

var number = 20

for j in 1...number {
    print(j)
}

// 참고) 와일드 카드 패턴 _(언더바)은 스위프트에서 생략의 의미

for _ in 0...3 {
    print("ios")
}

// let _ = 문자열

(1...5).reversed() // 5, 4, 3, 2, 1



// 배열 등 컬렉션 타입에서도 사용 가능
// 컬렉션에서 각 아이템을 차례 차례 한번씩 뽑아서 중괄호 안에서 사용

let list = ["Swift", "Programming", "Ios"]

for str in list {
    print(str)
}


// 문자열에서도 사용 가능
// 문자열에서 각 문자로 차례 차례 한개씩 뽑아서 중괄호 안에서 사용

for chr in "Hello" {
    print(chr)
}

// * 특정 함수 사용가능


// <Notice>
// stride: 성큼성큼 걷다.

let range = stride(from: 1, to: 15, by: 2)
print(range)
// 1 3 5 7 9 11 13
for i in range {
    print(i)
}


let range1 = stride(from: 1, through: 15, by: 2)
print(range1)
// 1 3 5 7 9 11 13 15
for i in range1 {
    print(i)
}


let range2 = stride(from: 10, through: 2, by: -2)
print(range2)
// 10 8 6 4 2
for i in range2 {
    print(i)
}

for number2 in (1...10).reversed() {
    print(number2)
}


let range4 = stride(from: 1, through: 15, by: 2)

for i in range4 {
    print(i)
}
