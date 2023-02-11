import UIKit

func avg(_ num: Double...) -> Double {
    var total = 0.0
    for i in num {
        total += i
    }
    return total / Double(num.count)
}

print(avg(1.5, 3.5, 5.5))

func sum(_ num1: Int, _ num2: Int) -> Int {
    var result = num1 + num2
    print(num1, num2)
    return result
}

print(sum(Int.random(in: 1...10), Int.random(in: 1...50)))



func chooseStepFunction(backward: Bool, value: Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    if backward {
        return stepBackward(input: value)
    } else {
        return stepForward(input: value)
    }
}


chooseStepFunction(backward: true, value: 7)

print(chooseStepFunction(backward: false, value: 8))

print(chooseStepFunction(backward: Bool.random(), value: Int.random(in: 1...100)))


func solution(_ num1: Int, _ num2: Int) -> Int {
    guard 0...100 ~= num1, 0...100 ~= num2 else { return 0 }
    return num1 / num2
}

for index in 1...10 {
    
    if index == 3 {
        break
    }
    print(index)
}


var a = 3

switch a {
case 1:
    break
case 2:
    print(a)
case 3:
    print("3입니다")
    fallthrough
case 4:
    print("Hi")
default:
    break
}


for index in 1...10 {
    
    if index % 2 == 1 {
        continue
    }
    print(index)
}

func doSomething() {
    print("1")
    print("2")
    
    if true {
        return
    }
    
    print("3")
    print("4")
}

var total: Int = 0

func square(_ i: Int) -> Int {
    return i * i
}

func squareOfSum(_ x: Int, _ y: Int) -> Int {
    var z = square(x + y)
    return z
}

func startFucntion() {
    var a = 4
    var b = 8
    total = squareOfSum(a, b)
}

squareOfSum(11, 13)

print(squareOfSum(5, 10))

