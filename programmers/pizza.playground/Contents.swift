import UIKit




// 피자 나눠 먹기(2)

func gcd(_ a: Int, _ b: Int) -> Int {
    return b != 0 ? gcd(b, a % b) : a
}

func solution(_ n: Int) -> Int {
    guard 1...100 ~= n else { return 0 }
    return n / gcd(6, n)
}

solution(10)


// 피자 나눠 먹기(3)

func solution2(_ slice:Int, _ n:Int) -> Int {
    guard 2...10 ~= slice, 1...100 ~= n else { return -1 }
    return n < slice ? 1 : Int(ceil(Double(n) / Double(slice)))
}

solution2(7, 13)

// 2 1 1  // 3 1 1
// 2 2 1  // 3 2 1
// 2 3 2  // 3 3 1
// 2 4 2  // 3 4 2
// 2 5 3  // 3 5 2
// 2 6 3  // 3 6 2

// 7 10 2
// 7 11 2
// 7 12 2
// 7 13 2
// 7 14 2


// 배열의 평균값

func solution3(_ numbers:[Int]) -> Double {
    guard 1...100 ~= numbers.count else { return -1 }
    var result: Double = 0.0
    for i in 0...(numbers.count - 1) {
        result += Double(numbers[i]) / Double(numbers.count)
    }
    return result
}

solution3([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
