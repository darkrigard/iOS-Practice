import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}


class PersonClass {
var firstName: String
var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
var fullName: String {
    return "\(firstName) \(lastName)"
}

}

var person1 = PersonStruct(firstName: "jason", lastName: "lee")

var person2 = person1

person1.firstName = "jay"

person1.firstName

person2.firstName

var person3 = PersonClass(firstName: "jaosn", lastName: "lee")

var person4 = person3

person3.firstName = "choi"

person3.firstName

person4.firstName

person4 = PersonClass(firstName: "Bob", lastName: "Lee")
person4.firstName
person3.firstName

person4 = person3
person4.firstName
person3.firstName

//class vs struct            value vs object

//여러개의 인스턴스를 생성해야하는가?

//짧은기간, 시간에만 존재하나??

//일단 스트럭트로 만들자 나중에 클래스로 변경 애플에서도 추천 struct가 속도가 빠름


