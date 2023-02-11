import UIKit

var ComputerChoice = Int.random(in: 0...2)

var MyChoice = 2


switch ComputerChoice {
case 0:
    print("컴퓨터의 선택은 가위 입니다.")
case 1:
    print("컴퓨터의 선택은 바위 입니다.")
case 2:
    print("컴퓨터의 선택은 보 입니다.")
default:
    break
}

switch MyChoice {
case 0:
    print("당신의 선택은 가위 입니다.")
case 1:
    print("당신의 선택은 바위 입니다.")
case 2:
    print("당신의 선택은 보 입니다.")
default:
    break
}


// 승 패 로직
// 가위: 0, 바위: 1, 보: 2


if MyChoice == ComputerChoice {
    print("무승부 입니다.")
} else if MyChoice == 0 && ComputerChoice == 2 {
    print("당신이 이겼습니다.")
} else if MyChoice == 1 && ComputerChoice == 0 {
    print("당신이 이겼습니다.")
} else if MyChoice == 2 && ComputerChoice == 1 {
    print("당신이 이겼습니다.")
} else {
    print("당신은 졌습니다.")
}
