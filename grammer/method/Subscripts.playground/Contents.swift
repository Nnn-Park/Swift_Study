import UIKit

                    // Subscripts


var array = ["Apple", "Swift", "ios", "Hello"]

array[0]
array[2]



class SomeData {
    var datas = ["Apple", "Swift", "ios", "Hello"]
    
    subscript(index: Int) -> String {  // 함수와 동일한 형태이지만 이름은 subscripts
        get {       // get / set은 계산속성에서의 형태와 비슷
            return datas[index]
        }
        
        set(paramterName) {
            datas[index] = paramterName // 또는 파라미터 생략하고 newValue로 대체 가능(계산 속성의 setter와 동일
        }
    }
}


//var data = SomeData()
//data.datas[2]
var data1 = SomeData()
data1[2]


struct Matrix {
    // 2차원 배열
    var data = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
    
    // 2개의 파라미터를 받는 읽기전용 서브스크립트의 구현
    subscript(row: Int, column: Int) -> String? {
        if row >= 3, column >= 3 {
            return nil
        }
        return data[row][column]
    }
}

// 2개의 파라미터를 받는 서브스크립트 구현도 가능

var mat = Matrix()

mat[0, 1]   // 대괄호 안에 파라미터 2개 필요
mat[1, 2]



enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let planet = Planet[3]
print(planet)

// static 또는 class 키워드로 타입 자체의 서브스크립트 구현 가능
// class는 상속시 재정의 가능
