import UIKit

func factorial(_ num: Int) -> (Int) {
    var sum = 1
    for i in 1...num {
        sum *= i
    }
    return sum
}
factorial(4)

// 재귀함수를 이용하여 풀기

// 재귀 함수란 자기 자신을 반복해서 호출하는 함수이다.

// 5! = 5 * (4 * 3 * 2 * 1)
// 5! = 5 * (4!)

func factorial2(num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return num * factorial2(num: num - 1)
}

factorial2(num: 5)

// 재귀함수에는 반드시 어떤 조건을 넣어줘야한다.
// (Function call causes an infinite recursion)와 같은 오류
// 스택오버플로우 현상이 일어날 수 있으므로
