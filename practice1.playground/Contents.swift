import UIKit

import Foundation
let closedRange = 0...10

let halfOpenRange = 0..<10

var sum = 0

for i in closedRange {
    print("--->\(i)")
    sum += 1
}

print("----> total sum : \(sum)")



var sinValue:CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}


let name = "Joon"

for _ in closedRange {
    print("--->\(name)")
}


for i in closedRange {
    if i % 2 == 0 {
        print("---> \(i)")
    }
}

for i in closedRange where i % 2 == 0 {
    print("---> \(i)")
}



for i in closedRange {


    if i == 5 {
        continue
    }//continue에들어간 숫자5 다음을 리턴하라 (skip)
    print("----> \(i)")
}




for i in closedRange {
    for j in closedRange {
        print("gugu---> \(i) * \(j) = \(i * j)")
    }
}

//
//let num = 10
//
//switch num {
//case 0: print("---> 0 입니다.")
//
//case 10:
//    print("---> 10입니다.")
//    case 0...20: print("---> 0~20 입니다.")
//default: print("---> 나머지.")
//}
//
//
//
//let pet = "bird"
//
//switch pet {
//case "dog", "cat":
//    print("---> 이것은 house pet 입니다")
//default: print("---> 모르는 동물입니다.")
//}
//
//
//let num = 5
//
//switch num {
//
//case _ where num % 2 == 0:
//    print("짝수")
//default:
//    print("홀수")
//}


//let coordinate = ( x: 10 , y: 10
//)
//
//switch coordinate {
//case(0,0):
//    print("---> 기준점")
//case(let x, 0):
//    print("---> 점이 x축에있음")
//case(0,let y):
//    print("---> 점이 y축에있음")
//case(let x, let y) where x == y:
//    print("같아요")
//case(let x, let y):
//    print("어딘가에 있는 좌표")
//}

