import UIKit

let twoNumbers = (1, 2)
type(of: twoNumbers)

let threeNumbers = (1, 2, 5)
type(of: threeNumbers)

var threeValues = ("홍길동", 20, "서울")
type(of: threeValues)


// 연관된 값(튜플)의 각각의 데이터의 접근

threeValues.0
threeValues.1
threeValues.2


// Named Tuple (이름이 매겨진 튜플)

let ios = (language: "Swift", version: 5)

ios.0
ios.1

// 일반적으로 위 처럼 사용하면, 혼동할 가능성이 큼

ios.language
ios.version

// 코드의 가독성이 높아짐


// 튜플의 분해 (Decomposition)
// 튜플의 데이터 묶음을 각 한개씩 분해해 상수나 변수에 저장 가능

let (first, second, third) = threeNumbers

first
second
third

// 튜플의 값의 비교 - 실제 사용하는 경우는 흔하지 않음

// 두개의 튜플 비교 가능, 왼쪽 멤버부터 한번에 하나씩 비교하고, 같을 경우 다음 멤버를 비교함
// 튜플은 최대 7개 요소 미만만 비교 가능(애플의 라이브러리 기능)

(1, "zebra") < (2, "apple") // true, 첫 번째 요소가 충족하기 때문, 따라서 두 번째 요소는 비교하지 않음
(3, "apple") < (3, "bird") // 첫 번째 요소가 같고, apple은 bird보다 작기 때문 ==> <생각> 문자열에서 아스키코드 번호가 a < b 이기때문 만약 a = a라면 두 번째 문자에서의 아스키코드 번호로 비교 -> 만약 두 번째 문자도 같다면 세 번째, 네 번째 ... 비교
(4, "dog") == (4, "dog")


("blue", -1) < ("purple", 1)
// ("blue", false) < ("purple", true) 에러발생 bool 값은 비교 불가능
