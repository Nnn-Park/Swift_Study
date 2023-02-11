import UIKit

var sum = 0
var num = 1

while num <= 50 {
    sum += num
    num += 1
}
print(sum)

var num2 = 1
var num3 = 1
var ran = Int.random(in: 1...9)

repeat {
    print("\(ran) * \(num2) = \(ran * num2)입니다.")
    num2 += 1
} while num2 <= 9



for i in 1...9 {
    for k in 1...9 {
        print("\(i) * \(k) = \(i * k)")
    }
}

