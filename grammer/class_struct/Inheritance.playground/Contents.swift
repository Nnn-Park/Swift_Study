import UIKit

class Person {
    var id = 0
    var name = "이름"
    var email = "abc@gmail.com"
}


class Student: Person {
//    var id = 0
//    var name = "이름"
//    var email = "abc@gmail.com"
    
    var studntId = 0
}

var a = Student()

a.email


class Undergraduate: Student {
//    var id = 0
//    var name = "이름"
//    var email = "abc@gmail.com"
//    var studntId = 0
    
    var major = "전공"
}

// 상속 ==> 저장속성(새로운 메모리)을 추가하는 개념

// 상위 클래스에서 존재하는 멤버를 변형하는 것을 재정의라고 함
// 재정의를 하려는 멤ㅂ버에는 override 키워드를 붙어야함


                // Overriding(재정의)

    
