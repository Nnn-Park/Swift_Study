import UIKit


//                                      Polmorphism(타입과 다형성)
//                              - 상속관계에서 인스턴스의 다형성에 대한 이해

    
class Person {
    var id = 0
    var name = "이름"
    var email = "abc@gmail.com"
    
    func walk() {
        print("사람이 걷는다.")
    }
}


class Student: Person {
    // id
    // name
    // email
    var studentId = 1
    
    override func walk() {          // 재정의 메서드. walk() - 1
        print("학생이 걷는다.")
    }
    
    func study() {
        print("학생이 공부한다.")
    }
}



class Undergraduate: Student {
    // id
    // name
    // email
    // studentId
    var major = "전공"
    
    override func walk() {
        print("대학생이 걷는다.")
    }
    
    override func study() {
        print("대학생이 공부한다.")
    }
    
    func party() {
        print("대학생이 파티를 한다.")
    }
}


let person1 = Person()
person1.walk()



//let student1 = Student()
let student1: Person = Student()
student1.walk()
//student1.study()



//let undergraduate1 = Undergraduate()
let undergraduate1: Person = Undergraduate()
undergraduate1.walk()
//undergraduate1.study()
//undergraduate1.party()





                                                // Polymorphism(다형성) - 여러가지 모양

/*
 
 [Polymorphism]
 - 하나의 객체(인스턴스)가 여러가지의 타입의 형태로 표현될 수 있음을 의미.
   (또는 하나의 타입으로 여러 종류의 객체를 여러가지 형태(모습)로 해석될 수 있는 성격)
 - 다형성이 구현되는 것은 "클래스의 상속"과 깊은 연관이 있음(향후 배울 프로토콜과도 연관)
 
 */


let people: [Person] = [Person(), Student(), Undergraduate()]


// 반복문
for person in people {
    person.walk()
}


// 한개씩
people[0].walk()    // Person 타입으로 인식 (Person 인스턴스)
people[1].walk()    // Person 타입으로 인식 (Student 인스턴스)
people[2].walk()    // Person 타입으로 인식 (Undergraduate 인스턴스)



            // - 상속관계에서 다형성은 메서드를 통해 발현
