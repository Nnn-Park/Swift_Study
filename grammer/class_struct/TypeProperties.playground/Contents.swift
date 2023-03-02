import UIKit


//                      Type Properties(타입속성)


class Dog {
    
    static var species: String = "Dog"
    
    var name: String
    var weight: Double
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
}



let dog = Dog(name: "초코", weight: 15.0)
dog.name
dog.weight

//dog.    ==> 인스턴스에서 .을 찍어도 속성으로 보이지 않음


Dog.species //  ==> 반드시 타입(형식)의 이름으로 접근해야함



// 1) 저장 타입(형식) 속성

class Circle {
    
    // (저장) 타입 속성 (값이 항상 있어야 함)
    static let pi: Double = 3.14
    static var count: Int = 0  // 인스턴스를 (전체적으로)몇개를 찍어내는지 확인
    
    // 저장 속성
    var radius: Double // 반지름
    
    // 계산 속성
    var diameter: Double {   // 지름
        get {
            return radius * 2
        }
        set {
            radius = newValue / 2
        }
    }
        // 생성자
        init(radius: Double) {
            self.radius = radius
            Circle.count += 1
    }
}


var circle1 = Circle(radius: 2)  // 인스턴스를 +1개 찍어냈다.
//circle1.radius
//circle1.diameter = 6
//circle1.radius
circle1.diameter * Circle.pi

Circle.count

var circle2 = Circle(radius: 3)  // 인스턴스를 +1개 찍어냈다.
Circle.count




let a = Circle.pi

// Circle()     // 인스턴스를 생성을 안했는데도 접근 가능


// 실제 사용 예시)

Int.max
Int.min

Double.pi

// 애플이 구현해놓은 저장 타입 속성








// 2) 계산 타입(형식) 속성

class Circle1 {
    static var pi: Double = 3.14
    static var count: Int = 0
    
    static var multiPi: Double {
        return pi * 2
    }
    
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
}

Circle.pi

var b = Circle(radius: 3)

b.radius = 5
b.radius

Circle1.multiPi

class Circle2 {
    static var pi: Double = 3.14
    static var count: Int = 0
    
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
        Circle2.count += 1
    }
    
    func getArea() -> Double {
        let area = Circle.pi * radius * radius
        return area
    }

}

let c1 = Circle2(radius: 5)
c1.getArea()
Circle2.count

let c2 = Circle2(radius: 3)
c2.getArea()
Circle2.count
