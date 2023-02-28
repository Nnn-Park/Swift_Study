import UIKit

class Dog {
    var name: String
    var weight: Int
    
    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(self.name) 앉았습니다.")
    }
    
    func layDown() {
        print("\(self.name) 누웠습니다.")
    }
}



// 인스턴스내에서 동일한 변수명, 상수명을 사용할 때
// 가르키는 것을 명확하게 하기위해 self 키워드를 사용


//               self키워드는 클래스/구조체 내에서 해당 인스턴스(자기자신)를 가르킴


var mydog = Dog(name: "dodam", weight: 10)

mydog.name
mydog.layDown()


var a: String?

print(a)


class Dog2 {
    var name: String
    var weight: Int
    
    init(weight: Int) {
        self.name = "dodam"
        self.weight = weight
    }
    
    func sit() {
        print("\(name) 앉았습니다.")
    }
    
    func layDown() {
        print("\(name) 누웠습니다.")
    }
}

var mydog2 = Dog2(weight: 10)

print(mydog2.name)

//if let name = mydog2.name {
//    print(name)
//}
