import UIKit

func chooseMember() {
    let member = ["Ben": 1, "Chris": 2, "곤죽": 3, "J": 4, "Jayden": 5, "Nnn": 6, "Louie": 7, "Ryan": 8 ]
    
    for (key, value) in member {
        if value == Int.random(in: 1...8) {
            return print("\(key)")
        }
        else if value == 2{
            continue
        }
        else if value == 1 {
            continue
        }
        else if value == 3{
            continue
        }
        else if value == 6 {
            continue
        }
    }
}

chooseMember()
