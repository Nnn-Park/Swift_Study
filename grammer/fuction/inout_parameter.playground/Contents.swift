import UIKit


// * 함수내의 파라미터는 기본적으로 값타입이고(복사되어 전달) 임시상수이기 때문에 변경 불가 원칙

var num1 = 123
var num2 = 456

func swap(a: Int, b: Int) {
//    var temp = a
//    a = b
//    b = temp
}

// swap이라는 구현은 함수에서 불가능

swap(a: num1, b: num2)


// * 함수 내에서 변수를 직접 수정하도록 돕는 inout키워드(참조로 전달)

// inout 키워드(선언시), & 사용(실행시)

func swapNumbers(a: inout Int, b: inout Int) {
    var temp = a
    a = b
    b = temp
}


// 함수 실행시에는 앰퍼샌드를 꼭 붙어야함

swapNumbers(a: &num1, b: &num2)

print(num1)
print(num2)

// - inout파라미터 사용시 주의점
// 1) 상수(let)나, 리터럴 전달하는 것은 불가능
// 2) 파라미터의 기본값 선언을 허용하지 않음
// 3) 가변 파라미터(여러개의 파라미터)로 선언하는 것은 불가능

func solution(_ num1: Int, _ num2: Int) -> Int {
    guard 1...100 ~= num1, 1...100 ~= num2 else { return 0 }
    let output = Int(Float(num1) / Float(num2) * 1000)
    return output
}

solution(7, 3)

var a: Double = 7
var b: Double = 3

Int((a / b) * 1000)

// 프로그래머스 문제 풀이(분수의 덧셈)

// 최대공약수 구하는 함수(유클리드 호제법 사용)
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}


func solution2(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    guard 0...1000 ~= numer1, 0...1000 ~= denom1, 0...1000 ~= numer2, 0...1000 ~= denom2 else { return [-1] }
    // 분자의 최대값
    let maxNum = denom1 * numer2 + denom2 * numer1
    // 분모의 최대값
    let maxDenum = denom1 * denom2
    // 분자의 최대공약수
    let gcdValue = gcd(maxNum, maxDenum)
    // 분자의 최대공약수로 분자, 분모의 최대값 나누기
    return [maxNum / gcdValue, maxDenum / gcdValue]
}

print(solution2(1, 2, 3, 4))

