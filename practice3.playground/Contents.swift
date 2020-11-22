import UIKit

//var carName: String?
//
//carName = nil
//carName = "tank"

// 여러분이 최애하는 여화배우의 이름을 담는 변수를 작성해주세요 (타입 String)

// let num = Int("10") num 타입을 예상해보기

//var favoriteActorName: String? = nil
//
//favoriteActorName = "김민정"

//Forced unwrapping optional > 억지로 박스를 까보자
//Optional binding > 부드럽게 박스를 까보자
//Guard statement > 부드럽게 박스를 까보자 2
//Nil coalescing > 박스를 까보았더니 값이 없으면 디폴트값을 줘보자...
//
//print(carName)
//
//carName = nil
//
//print(carName!)
//


//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//}else {
//    print("없음")
//}

//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//
//    }else {
//        print("Int Optional 값 없음")
//    }
//}
//
//func printParsedInt(from: String) {
//    guard let parsedInt = Int(from) else {
//        print("컨버팅안됨")
//        return
//    }
//
//    print(parsedInt)
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//
//    }else {
//        print("Int Optional 값 없음")
//    }
//}
//
//printParsedInt(from: "100")
//
//carName
//
//let myCarName = carName ?? "테슬라 모델 S"

//최애 음식이름을 담는 변수 작성하고 (string?), optional binding을 이용해서 값을 확인해보기
//닉네임을 받아서 출력하는 함수를 만들어보기, 입력 파라미터 String?

//var favoriteFood: String? = "짱깨"
//
//if let food = favoriteFood {
//    print(food)
//}else {
//    print("없음")
//}
//func printFood(what: String?){
//guard let food =  what else {
//    print("없음")
//    return
//}
//    print(food)
//}
//
//printFood(what: "jin")


var favoriteFood: String? = nil

let nilcol = favoriteFood ?? "짱깨"
if let food = favoriteFood {
    print(food)
}else{
    print("값이 없음")
}


func printFood(what: String?){
    guard let food = what else {
        print("없음")
        return
    }
    print(food)
}
printFood(what: "")
