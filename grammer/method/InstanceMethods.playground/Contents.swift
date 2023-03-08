import UIKit

class Dog {
    var name: String
    var weight: Double
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(name)가 앉았습니다.")
    }
    
    func layDown() {
        print("\(name)가 누웠습니다.")
    }
    
    func play() {
        print("열심히 놉니다.")
    }
    
    func changeName(newName name: String) {
        self.name = name
    }
}

let bori = Dog(name: "보리", weight: 20.0)

// 인스턴스(객체)의 메서드

bori.sit()
bori.layDown()
bori.play()

bori.changeName(newName: "초코")
bori.sit()
bori.layDown()
bori.play()


// 클래스의 인스턴스 매서드

class Dog1 {
    static var species = "Dog"
    
    var name: String
    var weight: Double
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(name)가 앉았습니다.")
    }
    
    func training() {
        print("왈왈 저는 \(Dog1.species)입니다.")
        sit()
        sit()
        self.sit()
    }
    
    func changeName(newName name: String) {
        self.name = name
    }
}

let bori1 = Dog1(name: "보리", weight: 20.0)
bori1.training()

bori1.changeName(newName: "말썽쟁이보리")
bori1.sit()


                // 구조체의 인스턴스 메서드

struct Dog2 {
    var name: String
    var weight: Double
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(name)가 앉았습니다.")
    }
    
    mutating func changeName(newName name: String) {
        self.name = name
    }
} 
