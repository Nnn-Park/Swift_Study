import UIKit

for num in 1...20 {
    if num % 2 == 0 {
        continue
    }
    print(num)
}

for i in 1...10 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}

OUTER: for i in 0...3 {
    print("OUTER \(i)")
    INNER: for j in 0...3 {
        if i > 1 {
            print(" j : ", j)
            continue OUTER
        }
        print("  INNER \(j)")
    }
}
