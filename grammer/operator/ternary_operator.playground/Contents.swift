import UIKit


//          <3항 연산자>

var a = 10

// if/else문

if a > 0 {
    print("1")
} else {
    print("2")
}



// 3항 연산자 (위의 if/else문과 완벽하게 동일)

a > 0 ? print("1") : print("2")




// * 조건에 따라 선택이 두가지인 경우 => 3항 연산자를 떠올리자

var name = a > 0 ? "스티브" : "팀쿡"
                // 피연산자(같은 형태가 와야함)
// 위는 아래와 같다.

if a > 0 {
    print("스티브")
} else {
    print("팀쿡")
}

/*
 명확히 if/ else 구문인 경우에만 사용(특정 경우에만 사용하는 조건문)
 3항 연산자 단독으로 쓰이기 보다는, 결과 값을 대입하는 데 주로 사용.
 
 실제 앱을 만들 때 많이 사용
*/

// ex)

var score = 80

let result = score >= 70 ? "Pass" : "Fail"

