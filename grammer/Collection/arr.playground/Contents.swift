import UIKit

//                              array(배열)

//          insert(삽입하기)

var alphabet = ["A", "B", "C", "D", "E", "F", "G"]

// 앞 또는 중간에 삽입하기

//alphabet.insert("N", at: 3)
alphabet.insert(contentsOf: ["H", "I"], at: 7)


//          replace(교체하기)

// 요소 교체하기
alphabet[0] = "a"
alphabet

// 범위를 교체하기
alphabet[1...2] = ["b", "c"]
alphabet

// 원하는 범위 삭제
alphabet[0...2] = []
alphabet


// 교체하기 함수 문법

//alphabet.replaceSubrange(<#T##subrange: Range<Int>##Range<Int>#>, with: <#T##Collection#>)

//          append(추가하기)

alphabet =  ["A", "B", "C", "D", "E", "F", "G"]

alphabet += ["H"]

// 추가하기 함수 문법

alphabet.append("I")


// 배열을 정리하기

var num = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

// 1) 배열을 직접정렬하는 매서드 sort(동사)
// 2) 정렬된 새로운 배열을 리턴 sorted(동사ing/동사ed)

num.sort() // 배열을 직접 정렬(오름차순) (배열리턴 하지 않음)
num.sorted() // 오름차순으로 정렬

num.reverse() // 요소를 역순으로 정렬 (배열 리턴하지 않음)
num.reversed()

// 새로운 배열은 생서하지 않고, 배열의 메모리는 공유하면서 역순으로 열거할 수 있는 형식을 리턴
num.sorted().reversed()

// 배열을 랜덤으로 섞기

num.shuffle() // 요소의 순서 랜덤으로 직접 바꾸기
num.shuffled()

//                      활용

// 특정 요소 쉽게 삭제하기
// ==> 직접 삭제는 불가 (1) 인덱스 찾아서, (2) 인덱스에 해당하는 요소 지우기

var puppy1 = ["p", "u", "p", "p", "y"]

if let lastIndexofP = puppy1.lastIndex(of: "p") {
    puppy1.remove(at: lastIndexofP)
}

var data = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

//           [1, 2, 3]
//           [4, 5, 6]
//           [7, 8, 9]

data[0][2]


// 반복문과의 결합

// 각 요소에 차례대로 접근, 배열과 반복문은 필연적으로 많이 쓰임

for i in num {
    print(i)
} // nums.shuffled() 배열 리턴했으므로

                        // enumerate: 영어로 열거하다

// enumerated() ==> 열거된 것들을 Named 튜플 형태로 한개씩 전달

// 데이터 바구니이기 때문에,
// 실제 번호표(index)까지 붙여서, 차례대로 하나씩 꺼내서 사용하는 경우가 많을 수 있어서 아래처럼 활용 가능
 var nums = [10, 11, 12, 13, 14]

var tuple = nums.enumerated()
print(tuple)

for tuple in nums.enumerated() {
    print(tuple)
    print("\(tuple.0) - \(tuple.1)")
}

for (index, word) in nums.enumerated() {  // 바로 뽑아내기
    print("\(index) - \(word)")
}

// 프로그래머스 문제풀이

func solution(_ numbers:[Int]) -> [Int] {
    guard 1...1000 ~= numbers.count else { return [] }
    var answer: Array<Int> = []
    for i in numbers {
        answer.append(i * 2)
    }
    return answer
}

solution([1, 2, 3, 4, 10])

func solution2(_ array:[Int]) -> Int {
    guard array.count % 2 == 1, 1...99 ~= array.count else { return -1}
    var sortArr = array.sorted()
    var middleValue = 0
    var result = 0
    for i in 0...99 {
        middleValue = sortArr.count - i
        if i > array.count - i {
            break
        }
    }
    for j in sortArr {
        result = sortArr[middleValue]
    }
    return result
}

solution2([9, -1, 0])

func solution3(_ n:Int) -> [Int] {
    guard 1...100 ~= n else { return [-1] }
    var answer: [Int] = []
    for i in stride(from: 1, to: n, by: 2) {
        answer.append(i)
    }
    return answer
}

solution3(10)

