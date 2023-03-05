import UIKit

//                          Property Observer(속성 감시자)


class Profile {
    // 일반 저장 속성
    var name: String = "이름"
    
    // 저장속성 + 저장 속성이 변하는 시점을 관찰하는 메서드
    var statusMessage: String = "재형" {
        willSet(message) {
            print("메세지를 \(statusMessage)이 \(message)로 보낼 예정입니다.")
        }
    }
}

let p = Profile()

p.name
p.name = "담이"

p.statusMessage
p.statusMessage = "어머니"


p.statusMessage = "아버지"


// 기본적으로 "속성 감시자"라는 이름이지만, 성격은 메서드 ==> 저장 속성 감시



// 속성 감시자의 2가지 종류 - wiilSet / didSet

class Profile1 {
    var name: String = "이름"
    
    var statusMessage: String {
        willSet(message) {  // 바꿀 값이 파라미터로 전달
            print("메세지가 \(statusMessage)에서 \(message)로 변경될 예정입니다.")
        }
        didSet(message) { // 바뀌기 전의 과거값이 파라미터로 전달
            print("메세지가 \(message)에서 \(statusMessage)로 이미 변경되었습니다.")
        }               // oldValue
    }
        
        init(message: String) {
            self.statusMessage = message
        }
    }

let profile1 = Profile1(message: "기본 상태메세지")

profile1.statusMessage =  "기분 좋아요"




// 파라미터의 생략

class Profile2 {
    
    // 일반 저장 속성
    var name: String = "이름"
    
    var statusMessage = "기본 상태메세지" {
        willSet {
            print("메세지가 \(statusMessage)에서 \(newValue)로 변경될 예정입니다.")
        }
        didSet {
            print("메세지가 \(oldValue)에서 \(statusMessage)로 이미 변경되었습니다.")
        }
    }
}

let p2 = Profile2()

p2.name
p2.name = "dodam"
p2.name

p2.statusMessage
p2.statusMessage = "행복해"
