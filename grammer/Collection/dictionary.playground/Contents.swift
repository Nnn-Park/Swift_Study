import UIKit

//                       Dictionary(딕셔너리)
//            데이터를 키와 값으로 하나의 쌍으로 만들어 관리하는 컬렉션


var dic = ["A": "Apple", "B": "Banana", "C": "City"] // 딕셔너리 리터럴로 생성해서 저장

var dic1 = [1: "Apple", 2: "Banana", 3: "City"]


// 내부적으로 순서가 존재하지 않음

print(dic)
print(dic1)


//                  딕셔너리의 타입 표기

// 단축문법
var words: [String: String] = [:]

// 정식문법
var words1: Dictionary<Int, String>


//                  빈 딕셔너리의 생성


let empty1: Dictionary<Int, String> = [:]
let empty2 = Dictionary<Int, String>()
let empty3 = [Int: String]()

// var dictFromLiteral = [:]  ==> 타입 정보가 없으면 유추할 수가 없다.

var dictFromLiteral = ["1": 1, "2": 2]
dictFromLiteral = [:]  // 이미 위에서 타입을 정의했다면, 아래에서 빈 값으로 넣는 것은 괜찮음



//                      딕셔너리의 기본 기능

dic.count
dic.isEmpty


//dic.contains(where: <#T##(Self.Element) -> Bool#>)

dic.randomElement()     // Named Tuple 형태로 리턴
// 빈 배열일 경우 nil 리턴



//              Dictionary의 각 요소(element)에 대한 접근 (키 값으로 접근)

// 배열

var numsArray = [1, 2, 3, 4, 5]

numsArray[0]


//               Dictionary는 기본적으로 SubScript를 이용한 문법을 주로 사용


dic = ["A": "Apple", "B": "Banana", "C": "City"]

dic["A"]            // ==> nil의 가능성 ==> String?(옵셔널)
print(dic["A"])
print(dic["Q"])


if let a = dic["A"] {    // 옵셔널 바인딩
    print(a)
} else {
    print("Not found")
}

// Dictionary는 값만 따로 검색하는 방법은 제공하지 않음.
// SubScript 문법으로 "키"를 전달

// 참고 (잘 사용하지는 않음)
dic["S", default: "Empty"]
// 자료가 없으면 기본값을 리턴하는 문법 ==> 리턴 String ==> nil이 발생할 확률이 없음


print(dic.keys)
print(dic.values)

dic.keys.sorted()
dic.values.sorted()

for key in dic.keys.sorted() {
    print(key)
}



//                  (insert / replace / append)
//                                |
//                              update


words = [:]

words["A"] = "Apple"   // 애플로 다시 바꾸기
words

words["B"] = "Banana"  // 동일한 키가 없으면 ===> 추가하기
words

words["B"] = "Blue"    // 동일한 키가 있으면 ===> 기존 밸류 덮어쓰기
words

words.updateValue("City", forKey: "C")



// (정식 기능) 함수 문법 (update + insert = upsert)

words.updateValue("City", forKey: "C")  // 새로운 요소가 추가되면 ===> 리턴 nil
words



// words = [:] // 빈 Dictionary로 만들기
words = ["A": "A"] // 전체 교체하기(바꾸기)


//                  Dictionary는 append 함수를 제공하지 않음


// append는 순서가 있는 Collection의 끝에 추가하는 개념
// Dictionary는 순서가 없기 때문에, update를 통해서 추가

//                  remove

dic = ["A": "Apple", "B": "Banana", "C": "City"]

// 요소 삭제하기

dic["B"] = nil  // 해당요소 삭제
dic

dic["E"] = nil  // 존재하지 않는 Key Value를 삭제 ===> 아무일이 일어나지 않음(error x)
dic


// 함수로 삭제해보기

dic.removeValue(forKey: "A")  // 삭제후, 삭제된 값 리턴
dic.removeValue(forKey: "A")  // 다시 삭제 ===> nil 리턴

// 전체 삭제하기

dic.removeAll()
dic.removeAll(keepingCapacity: true)




// 프로그래머스 문제 풀이


func solution(_ n:Int) -> Int {
    guard 1...100 ~= n else { return -1 }
    var range = 0
    print(range)
    var result = 0
    if n % 7 == 0 {
        result = n / 7
    }
    for i in 1...6 {
        if n % 7 == i {
            result = (n / 7) + 1
        }
    }
    return result
}


solution(100)



func solution2(_ n:Int) -> Int {
    guard 1...100 ~= n else { return 0 }
    return Int(ceil(Double(n) / Double(7)))
}

solution2(15)

