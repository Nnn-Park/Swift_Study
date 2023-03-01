import UIKit

class Dog1 {
    var name: String
    var weight: Int
    
    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(self.name)가 앉았습니다.")
    }
    
    func layDown() {
        print("\(self.name)가 누웠습니다.")
    }
}

var bori = Dog1(name: "보리", weight: 15)
bori.layDown()



var choco = Dog1(name: "초코", weight: 10)
choco.sit()



//                  Computed Properties(계산속성)

class Person {
    var birth: Int = 0
    
    var age: Int {
        get {
            return 2023 - birth
        }
        set {
            self.birth = 2023 - birth
        }
    }
    
    
//    func getAge() -> Int {
//        return 2023 - birth
//    }
//
//    func setAge(_ age: Int) {
//        self.birth = 2023 - age
//    }
}

var p1 = Person()
p1.birth = 1999
p1.age      // get
p1.age = 23  // set
p1.birth


class Person2 {
    var name: String = "재형"
    var height: Double = 177.0
    var weight: Double = 64.5
    
    var bmi: Double {
        get {
            let result = weight / (height * height) * 10000
            return result
        }
        set(bmi) {
            weight = bmi * height * height / 10000
        }
        //    func calculateBMI() -> Double {
        //        let bmi = weight / (height * height) * 10000
        //        return bmi
        //    }
    }
}

let p = Person2()
p.height = 177.0
p.weight = 64.5

p.bmi
p.bmi = 25

p.weight
