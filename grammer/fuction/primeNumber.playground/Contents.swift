import UIKit

// 1) 랜덤 문자열 뽑아내는 함수

func chooseRandomString(_ chars: String) -> String {
    
    // chars.randomElement()
    let randomString = String(chars.randomElement()!)
    return randomString
}

func chooseRandomString2(_ chars: String) -> Character {
    return (chars.randomElement()!)
}
 

chooseRandomString("안녕하세요")

chooseRandomString2("반갑습니다")



// 2) 소수 판별 해보기


//func primeNumberCheck(_ num: Int) -> () {
//    for i in 2..<num {
//        if num % i != 0 {
//            print("소수입니다.")
//        }
//        else {
//            return print("소수가 아닙니다.")
//        }
//    }
//}
//
//primeNumberCheck(97)

// if문이 for문에 종속되어 있어 프린트 함수 또한 for문의 영향을 받아 출력한다.

func primeNumberCheck2(num2: Int) -> Bool {
    for i in 2..<num2 {
        if num2 % i != 0 {
            return true
        }
    }
    return false
}


//                              * 이 로직의 큰 오류
// num2가 6이고 i가 4일때 6 % 4 != 0 이므로 참 값이 되어 함수가 종료된다.
// 단순하게 참 거짓을 바꿀 목적으로 연산자도 반대로 바꾼다고 생각해버렸다. 예외의 경우를 항상 생각하자!



// primeNumberCheck2(num2: 6) // Boolean 타입이 나오므로

if primeNumberCheck2(num2: 96) {
    print("소수입니다.")
} else {
    print("소수가아닙니다.")
}


// 오류 수정 함수

func primeNumberChoice3(num3: Int) -> Bool {
    for i in 2..<num3 {
        if num3 % i == 0 {
            return false
        }
    }
    return true
}

if primeNumberChoice3(num3: 6) {
    print("소수입니다.")
} else {
    print("소수가 아닙니다.")
}
