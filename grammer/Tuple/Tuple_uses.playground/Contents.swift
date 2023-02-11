import UIKit

let ios = (language: "Swift", version: "5")
/*
ios.language
ios.version
type(of: ios)
*/

if ios.0 == "Swift" && ios.1 == "5" {
    print("스위프트 버전 5입니다.")
}

if ios == ("Swift", "5") {
    print("스위프트 버전 5입니다.")
}

// 이런 코드를 아래의 스위치문을 이용하면 단순해짐


switch ios {
case ("Swift", "5"):
    print("스위프트 버전 5입니다.")
default:
    break
}

// 스위프트의 switch문은 튜플매칭을 지원 ==> 코드를 단순한 형태로 표현 가능


// <튜플의 활용>


// 튜플의 바인딩

var coordinate = (9, 0)

switch coordinate {
case (let distance, 0), (0, let distance):
    print("x 또는 y축 위에 위치하며, \(distance)만큼의 거리가 떨어져 있음")
default:
    print("축 위에 있지 않음")
}


coordinate = (1, -1)

switch coordinate {
case let (x, y) where x == y:
    print("(\(x), \(y)의 좌표는 y = x 1차함수의 그래프 위에 있다.")
          
case let (x, y) where x == -y:
    print("(\(x), \(y)의 좌표는 y = -x 1차함수의 그래프 위에 있다.")
    
case let (x, y):
    print("(\(x), \(y)의 좌표는 y = x, 또는 y = -x 그래프가 아닌 임의의 지점에 있다.")
}
