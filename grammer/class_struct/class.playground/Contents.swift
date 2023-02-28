import UIKit

class Book {
    var name: String
    var price: Int
    var publisher: String
    var author: String
    var Pages: Int
    
    init(n: String, p: Int, pub: String, a: String, h: Int) {
        self.name = n
        self.price = p
        self.publisher = pub
        self.author = a
        self.Pages = h
    }
}


var book1 = Book(n: "Swift", p: 35000, pub: "apple", a: "Steve", h: 550)

var book2 = Book(n: "Justice", p: 13500, pub: "wizeberry", a: "Michael", h: 443)

book2.name


class Member {
    var name: String
    var gender: String
    var age: Int
    var adress: String
    
    init(n: String, g: String, a: Int, ad: String) {
        self.name = n
        self.gender = g
        self.age = a
        self.adress = ad
    }
}

var member = Member(n: "Nnn", g: "male", a: 25, ad: "Busan")

print(member.age)


class Movie {
    var title: String
    var genre: String
    var actor: String
    var director: String
    var day: Int
    
    init(t: String, g: String, a: String, d: String, day: Int) {
        self.title = t
        self.genre = g
        self.actor = a
        self.director = d
        self.day = day
    }
}

var movie1 = Movie(t: "Interstella", g: "SF", a: "Mattew", d: "Christopher", day: 2014)

print(movie1.actor)
print(movie1.day)
