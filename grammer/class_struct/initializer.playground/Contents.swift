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

class Aclass2 {
    var x = 0
}

let a = Aclass2()
print(a.x)

class Bclass2: Aclass2 {
    
    var y: Int
    
    // 지정생성자로 재정의
    override init() {
        self.y = 0
        super.init()
    }
    
    // 서브클래스에서 편의생성자로 구현
//    override convenience init() {
//        self.init(y: 0)
//    }
//
//
    // 현재단계의 생성자의 구현
    init(y: Int) {
        self.y = y
        super.init()
    }
}

let b = Bclass2()

print(b.y)



class Cclass: Bclass2 {
    
    var z: Int
    
    override init() {
        self.z = 0
        super.init()
    }
    
    override init(y: Int) {
        self.z = 0
        super.init(y: 0)
    }
    
    init(z: Int) {
        self.z = z
        super.init()
    }
}


//                                      애플 공식 문서의 예제

class Vehicle {
    var numberOfWheels = 0
    
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

let vehicle = Vehicle()
print("vehicle: \(vehicle.description)")

// 상위의 지정생성자
// init()

class Bicycle: Vehicle {
    
    override init() {
        super.init()
        numberOfWheels = 2
    }
}


// 상위의 지정생성자
// init()


class Hoverboard: Vehicle {
    
    var color: String
    
    // (읽기) 계산 속성 재정의
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
    
//    override init() {
//        self.color = "빨간색"
//        super.init()
//
//    }
    
    // or
    
//    override convenience init() {
//        self.init(color: "빨간색")
//    }
    
    init(color: String) {
        self.color = color
        super.init()
    }
    
//    override init() {
//        color = "보라색"
//        super.init()
//        numberOfWheels = 3
//    }
    
}




// 생성자에서 Hoverboard 클래스는 색상 속성만 설정
// 상위구현에 기본 init() 만 있는 경우 생략가능(암시적 요청)

let hoverboard = Hoverboard(color: "빨간색")
print(hoverboard.color)
print(hoverboard.description)

class Food {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}


let namedMeat = Food(name: "Bacon")
namedMeat.name


let mysteryMeat = Food()
mysteryMeat.name


// 상위의 지정생성자
// init(name: String)       지정생성자
// convenience init()       편의생성자





// 레시피 재료


class RecipeIngredient: Food {
    
    var quantitiy: Int
    
    init(name: String, quantitiy: Int) {
        self.quantitiy = quantitiy
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantitiy: 1)
    }
    
    //convenience init()       // 자동 상속 (예외 규칙)
}



// 상위의 지정생성자
// init(name: String, quantitiy: Int)               지정생성자
// override convenience init(name: String)          편의생성자
// convenience init()


class ShoppingListItem: RecipeIngredient {
    
    var purchased = false   // 값을 가지므로 자동상속, 상위 지정생성자가 모두 자동상속했으므로 편의생성자도 자동상속
    
    var description: String {
        var output = "\(quantitiy) x \(name)"
        output += purchased ? " v" : " x"
        return output
    }
    
    //              자동상속
    
//    init(name: String, quantitiy: Int, purchased: Bool) {
//        self.purchased = purchased
//        super.init(name: name, quantitiy: quantitiy)
//    }
//
//    override convenience init(name: String, quantitiy: Int) {
//        self.init(name: name, quantitiy: quantitiy, purchased: false)
//    }
//
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantitiy: 6)
]

breakfastList[0].name
breakfastList[0].name = "Orange Juice"
breakfastList[0].purchased = true

for item in breakfastList {
    print(item.description)
}





                                    // Required Initializers(필수 생성자)



class Aclass3 {
    
    var x: Int
    required init(x: Int) {
        self.x = x
    }
    
// 클래스 생성자 앞에 required 키워드 사용시
// 하위 생성자는 반드시 해당 필수 생성자를 구현 해야함
}

class Bclass3: Aclass3 {
//    required init(x: Int) {
//        super.init(x: x)
//    }
}






class Cclass3: Aclass3 {
    init() {
        super.init(x: 0)
    }
    
    required init(x: Int) {
        super.init(x: x)
    }
}


// init() 생성자를 구현하면, 자동 상속 조건을 벗어나기 때문에
// requierd init(x: Int) 필수생성자 구현해야 함




                    // 필수 생성자 사용 예시 (UIView)

class AView: UIView {
    
//    init() {
//
//    }
//
//    required init?(coder: NSCoder) {                                      // 구현을 안해도 자동상속
//        fatalError("init(coder:) has not been implemented")
//    }
}


class BView: UIView {
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
