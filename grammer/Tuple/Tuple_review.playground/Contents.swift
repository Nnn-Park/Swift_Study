import UIKit

let macos = (name: "Ventura", version: "13.1")

macos.name
macos.version

if macos.name == "Ventura" && macos.version == "13.1" {
    print("macos 버전이름은 \(macos.name)이고 버전은 \(macos.version)입니다.")
}

switch macos {
case ("Ventura", "13.1"):
    print("macos 버전이름은 \(macos.name)이고 버전은 \(macos.version)입니다.")
default:
    break
}


var coordinate = (3, 4)

switch coordinate {
case (let distance_x, 4):  // distance_x 에 3을 바인딩
    print("x축 방향으로 \(distance_x), y축 방향으로 4만큼 평행이동 했습니다.")
default:
    break
}
