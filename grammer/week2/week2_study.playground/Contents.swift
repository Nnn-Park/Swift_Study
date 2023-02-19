import UIKit


func memberSequent () -> Int {
    var chooceNum = 0
    for i in 0...Int.random(in: 1...8) {
        chooceNum = i
        if chooceNum == 6 {
            continue
        }
        else if chooceNum == 7 {
            continue
        }
        else if chooceNum == 1 {
            continue
        }
        else if chooceNum == 2 {
            continue
        }
    }
    return chooceNum
    }
    

memberSequent()

//Ben = 1
//Chris = 2
//곤죽 = 3
//J = 4
//Jayden = 5
//Louie = 6
//Nnn = 7
//Ryan = 8


func factorial(_ n: Int) -> Int {
    var result = 1  // 지역변수, scope는 factorial함수 내부
    for i in 1...n {
//        var result = 1
        result *= i
    }
    return result
}

factorial(5)


func factorial2(_ n: Int) -> Int {
    guard 1...10 ~= n else { return -1 }    // scope가 함수 밖에서도 유효
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}

factorial2(6)

factorial2(11)
