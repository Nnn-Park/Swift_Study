import UIKit

func sayHello(){
    print("안녕하세요")
}

sayHello()  //결과적으로 void// 결과값을 사용하지 않는다고 경고로 알려줌


// 리턴값(타입)이 있는 함수

func sayHelloString() -> String {
    print("하이")
    return "안녕하세요"
}

sayHelloString()  //실제 프로젝트에서 경고창 표시
_ = "안녕하세요"

// 기존의 방식
_ = sayHelloString()


//                              * 리턴값이 있는 함수에서 리턴값을 사용하지 않는다면

// 결과값을 사용하지 않아도 된다고 컴파일러에게 정보를 알려줌

@discardableResult
func doSomething() -> String {
    return "Swift"
}

doSomething()

var name = doSomething() // 일반적으로 결과값을 받아서 사용해야하지만,
                         // @discardableResult를 사용하면 함수의 결과값을 사용해야한다는 (노란색)경고창이 사라짐
