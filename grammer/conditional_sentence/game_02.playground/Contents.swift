import UIKit

var ComputerChoice = Int.random(in: 1...10)

var MyChoice = 3


// 랜덤 빙고 게임 로직

if MyChoice == ComputerChoice {
    print("Bingo")
} else if MyChoice > ComputerChoice {
    print("Down")
} else {
    print("Up")
}
