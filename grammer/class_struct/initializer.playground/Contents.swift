import UIKit


class Color {
    //let red, green, blue: Double // 동일한 타입일 때, 한줄에 작성가능
    let red: Double
    let green: Double
    let blue: Double
    
    
    // 생성자도 Overloading을 지원 (파라미터의 수, 아규먼트 레이블, 잘형으로 구분)
    
    init() {    // 기본 생성자. 저장 속성의 기본값을 설정하면 자동 구현이 제공됨
        red = 0.0
        green = 0.0
        blue = 0.0
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

// var c = Color.init()




var color = Color() // 기본 생성자 호

//color = Color(white: <#T##Double#>)
//color = Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
//
//color = Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
//color = Color.init(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)


        // Memberwise Initializer - 구조체의 특별한 생성자

struct Color1 {
    var red: Double
    var green: Double
    var blue: Double
}


                // 구조체 생성자

struct Color2 {
    var red, green, blue: Double
    
    init() {
        self.init(red: 0.0, green: 0.0, blue: 0.0)
    }
    
    init(white: Double) {
        self.init(red: white, green: white, blue: white)
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}


// 클래스 편의 생성자

class Color3 {
    let red, green, blue: Double
    
    convenience init() {
        self.init(red: 0.0, green: 0.0, blue: 0.0)
    }
    
    convenience init(white: Double) {
        self.init(red: white, green: white, blue: white)
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

class Aclass {
    
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    convenience init() {
        self.init(x: 0, y: 0)
    }
}

class Bclass: Aclass {
    
    var z: Int
    
    init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    convenience init(z: Int) {
        self.init(x: 0, y: 0, z: z)
    }
    
    convenience init() {
        self.init(z: 0)
    }
    
    func doSomething() {
        print("Do something")
    }
}
