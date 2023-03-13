import UIKit


class Aclass {
    func doSomething() {
        print("Do something")
    }
}


class Bclass: Aclass {
    override func doSomething() {
        super.doSomething()
        print("Do something. Do another job")
    }
}

var b = Bclass()
b.doSomething()

// 저장속성의 재정의는 원칙적 불가(데이터 구조의 변형은 불가)



            // overriding(재정의)의 기본 문법

class SomeSuperclass {
    // 저장 속성
    var aValue = 0
    
    //메서드
    func doSomething() {
        print("Do something")
    }
}


class SomeSubclass: SomeSuperclass {
    // 저장속성의 재정의는 원칙적 불가
//    override var aValue = 3
    
    // 저장속성 ==> (재정의) 계산속성
    // 그러나, 메서드 형태로 부수적 추가는 가능
    override var aValue: Int {
        get {
            return 1
        }
        set {
            super.aValue = newValue
        }
    }
    
    // 메서드는 (어떤 형태로든) 재정의 가능 ==> 변형 / 대체
    override func doSomething() {
        super.doSomething()
        print("Do something 2")
    }
}

var c = SomeSubclass()
c.doSomething()
c.aValue
