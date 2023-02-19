import UIKit

class Dog {
    var name = "강아지"
    var weight = 0.0
}




var bori = Dog()

bori.name
bori.name = "보리"
bori.name

bori.weight = 15
bori.weight




var choco = Dog()

choco.name
choco.name = "초코"
choco.name

choco.weight = 7
choco.weight


class Book {
    var name = "책제목"
    var price = 0
    var pages = 100
}


var book1 = Book()
book1.name = "Swift"
book1.price = 25000
book1.pages = 500

book1.name
book1.price
book1.pages


// 구조체와 클래스의 차이점


// 클래스에서의 복사
class Apple {
    var ceo = "팀 쿡"
    var product = "iphone"
}

var apple1 = Apple()

// 복사
var apple2 = apple1 // 메모리 주소값 자체를 복제

apple2.ceo
apple2.ceo = "apple users"
apple2.ceo

apple1.ceo


apple2.product
apple2.product = "apple watch"
apple2.product

apple1.product


// 구조체에서의 복사
struct Apple2 {
    var ceo = "팀 쿡"
    var product = "iphone"
}

var apple3 = Apple2()

// 복사
var apple4 = apple3 // 새로운 틀 생성

apple4.ceo
apple4.ceo = "apple users"
apple4.ceo

apple3.ceo // 틀이 복사되므로

apple4.product
apple4.product = "apple watch"
apple4.product

apple3.product



var b: Int? = 5

b

class Person {
    var name = "재형"
    var age = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//var man = Person(name: String, age: Int)
