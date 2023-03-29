import UIKit



                                // 확장 문법


// 기존 타입

class SomeType {
    
}


// 확장

extension SomeType {        // 기존의 타입에 extension 이라는 키워드를 사용해서 확장하고, 새로운 기능을 정의
    // 새로운 기능을 추가 가능(매서드 형태만 가능)
    func doSomething() {
        print("Do something")
    }
}



// 기존 유형에 새 기능을 추가하기 위해 확장을 정의하면
// 확장이 정의되기 전에 생성된 경우에도 기존 인스턴스에서 새 기능을 사용 가능함





// 예시를 통한 확장의 이해

class Person {
    var id = 0
    var name = "이름"
    var email = "1234@gmail.com"
    
    func walk() {
        print("사람이 걷는다.")
    }
}


class Student: Person {
    var studentId = 1
    
    override func walk() {
        print("학생이 걷는다")
    }
    
    func study() {
        print("학생이 공부한다.")
    }
}


extension Student {     // 스위프트에서는 확장에서 구현한 메서드에 대한 재정의가 불가 (@obcj 붙이면 가능)
    func play() {
        print("학생이 논다.")
    }
}


class Undergraduate: Student {
    var major = "전공"
    
    override func walk() {
        print("대학생이 걷는다.")
    }
    
    override func study() {
        print("대학생이 공부한다.")
    }
    
    
//   override func play() {   // 스위프트에서는 확장에서 구현한 매서드에 대한 재정의가 불가
//       print("대학생이 논다.")
//    }
}


var under = Student()
under.play()






                        // 확장의 장점

// 소급 - 모델링 (retroactive modeling)

//extension Int {
//    var squared: Int {
//        return self * self
//    }
//}
//
//
//5.squared



// 확장 가능 멤버의 종류


// - 확장에서는 메서드 형태만 정의 가능


// 클래스, 구조체, (열거형) 확장가능 멤버


// (타입) 계산 속성, (인스턴스) 계산 속성
// (타입) 메서드, (인스턴스) 메서드
// 새로운 생성자  (다만, 클래스의 경우 편의생성자만 추가 가능 / 지정생성자 및 소멸자는 반드시 본체에 구현)
// 서브스크립트
// 새로운 중첩 타입 정의 및 사용
// 프로토콜 채택 및 프로토콜 관련 메서드


                                        // 멤버의 확장(계산 속성)
        // (타입)계산 속성의 확장

// (타입) 계산 속성 또는 (인스턴스) 계산 속성 확장 가능
// (저장된 속성을 추가하거나 기존 속성에 속성 관찰자를 추가 할 수는 없음)


extension Double {
    static var zero: Double { return 0.0 }
}

Double.zero


        // (인스턴스)계산 속성의 확장


// 인스턴스의 (읽기전용) 계산 속성을 기존의 애플이 만든 Double 타입에 추가 하는 예제


// 자신의 단위를 입력하여 ==> 미터 기준으로 바꾸는 예제

extension Double {
    var km: Double { return self * 1_000.0 }   // 인스턴스 자신에 1000 곱하기
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("1인치는 \(oneInch) 미터")

let threeFeet = 3.ft
print("3피트는 \(threeFeet) 미터")


extension Int {
    var squared: Int {
        return self * self
    }
}


func squared(num: Int) -> Int {         // 이런식으로 함수를 만드는 것보다 훨씬 간단하고, 더 간결하게 만들 수 있음
    return num * num
}


Int(123).squared
123.squared

squared(num: 123)



                                



                                            // 멤버의 확장(메서드)
                // (타입)메서드의 확장


// 애플이 만든 타입메서드 예시

Int.random(in: 1...100)



extension Int {
    static func printNumbersFrom1to5() {
        for i in 1...5 {
            print(i)
        }
    }
}

Int.printNumbersFrom1to5()


               // (인스턴스)메서드의 확장


// Int타입에 특정 프린트 구문 확장해보기

extension String {
    func printHelloRepetitions(of times: Int) {
        for _ in 0..<times {
            print("Hello \(self)!")
        }
    }
}


"Steve".printHelloRepetitions(of: 4)



// mutating 인스턴스 메서드의 확장


// 구조체(열거형)에서, 자신의 속성을 변경하는 매서드는 mutating키워드 필요


// 제곱하는 메서드 만들어보기

extension Int {
    mutating func square() {            // 기존 메서드와 동일하게, mutating 키워드 필요
        self = self * self
    }
}


var someInt = 3
someInt.square()




                                            // 멤버의 확장(생성자)

// - 생성자의 확장

//   [클래스]
// - 편의 생성자만 추가 가능
// - 지정생성자 추가 불가 / 소멸자 추가 불가 (항상 본래의 클래스에서 정의해야 함)


// UIColor 기본 생성자
var color = UIColor(red: 0.3, green: 0.5, blue: 0.4, alpha: 1)


extension UIColor {             // 익스텐션 + 편의생성자 조합
    
    convenience init(color: CGFloat) {      // Core Graphic Float /  Double
        self.init(red: color/255, green: color/255, blue: color/255, alpha: 1)
    }
}


// 일단 아주 쉽게 객체 생성하는 방법을 제공 가능해짐

UIColor(color: 1)
//UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)






//   [구조체]
// - 구조체는 (원래) 편의 생성자가 존재하지 않음
// (편의 생성자와 비슷한) 생성자를 추가하여 본래의 지정 생성자를 호출하는 방법으로만 구현 가능
// (즉, 편의생성자와 같은 역할, 그리고 본체의 생성자를 호출 할 때까지 self에 접근이 안됨)

// - (본체) 생성자 작성
// - 기본 생성자/멤버와이즈 생성자 제공 안됨
// - 확장의 생성자에서 ==> (본래) 지정 생성자 호출해야함

// - (예외) (본체) 저장속성에 기본값제공 + 생성자 정의 안한 경우
// - 기본 생성자/멤버와이즈 생성자가 자동제공
// - 확장의 생성자에서 ==> 생성자 구현 가능 / 기본 생성자/멤버와이즈 생성자 호출도 가능





// 포인트 구조체, 사이즈 구조체

struct Point {
    var x = 0.0, y = 0.0
    
    //init(x: Double, y: Double)
    
    //init()
}


extension Point {
    init(num: Double) {
        self.init(x: num, y: num)
    }
}


struct Size {
    var width = 0.0, height = 0.0
}



// Rect구조체

struct Rect {           // 기본값 제공 ==> 기본 생성자 / 멤버와이즈 생성자가 자동 제공 중
    var origin = Point()
    var size = Size()
}



let defaultRect = Rect()   // 기본생성자

// Rect(origin: Point(x: <#T##Double#>, y: <#T##Double#>), size: Size(width: <#T##Double#>, height: <#T##Double#>))


let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
                          size: Size(width: 5.0, height: 5.0))  // 멤버와이즈 생성자



extension Rect {
    // 센터값으로 Rect 생성하는 생성자 만들기
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        
        // 본체의 - 멤버와이즈 생성자 호출 (원칙)
        self.init(origin: Point(x: originX, y: originY), size: size)
        
        // 예외적인 경우 (저장속성에 기본값 + 본체에 생성자 구현 안한 경우, 생성자 구현 가능)
        // self.origin = Point(x: origin, y: originY)
        // self.size = size
    }
}

// 새로 추가한 생성자로 인스턴스 생성해보기
