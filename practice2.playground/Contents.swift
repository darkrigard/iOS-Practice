import UIKit

func printName() {
    print("---> My name is Jason")
}


printName()



// 숫자를 입력받아 10을 곱해서 출력한다
// 파라미터 1개

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 20)

// 파라미터 2개
// 물건값과 갯수를 입력으로 주면 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int){
    print("Total Price : \(price * count)")
}

printTotalPrice(price: 10, count: 4500)

func printTotalPrice(price: Int = 2000, count: Int){
    print("Total Price : \(price * count)")
}

printTotalPrice(count: 45)


func totalPrice(price: Int, count: Int) -> Int {

    let totalPrice = price * count
    return totalPrice
}

let calculatedTotalPrice = totalPrice(price: 2000, count: 10)
print("\(calculatedTotalPrice)")


func printTotalPrice(price: Int, count: Int){
    print("\(price) * \(count) = \(price * count)")
}
printTotalPrice(price: 10000, count: 5)

func printCalculatedPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}


//1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
//
//2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
//3. 성, 이름을 받아서 fullname을 return 하는 함수 만들기



func printFullName(first: String, last: String){
    print("\(last+first)")
}

printFullName(first: "우진", last: "최")


func printFullName2(_ first: String = "woojin",_ last: String = "choi"){
print("\(last+first)")
}

printFullName2("jason","lee")

func printFullName3(first: String, last: String) -> String {
    let fullName = last + first
    return fullName
}

printFullName3(first: "woojin", last: "choi")


let fullName = printFullName3(first: "jun", last: "park")

fullName



func printTotalPrice(price: Int, count: Int){
    print("total price: \(price * count)")
}

func printTotalPrice(가격: Int, 개수: Int) {
    print(" 총가격은 \(가격 * 개수)")
}

func printTotalPrice(price: Double, count: Double){
    print("total price: \(price * count)")
}

//데이터타입을 다르면 같은함수를 만들수있음

//In - Out parameter
var value = 3

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
incrementAndPrint(&value)


func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}


func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add

function(4,2)
function = subtract
function(4,2)


func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 4)

printResult(subtract, 11, 7)

