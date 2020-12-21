import UIKit

struct Person {
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    var firstName: String {
        didSet {
            print("firstName is changed from \(oldValue) to \(firstName)")
        }//Stored property에 한해서 옵저빙을 할 수있다 어떻게 값이 변하는지 세팅이변할시 출력
        
    }
    var lastName:String
//Stored property -> 어떤 값을 저장하고있는 속성
    
    lazy var isPopular: Bool = {
        print("chcking...")
        if fullName == "Freddie Mercury"{
            return true
        }else {
            return false
        }
    }() //실제로 접근할때만 코드가 실행 되기때문에 시스템부하가 적다 lazy property
    
    var fullName: String {
        get {
        return "\(firstName) \(lastName)"
        }
        set{
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
        //Computed property -> let 쓸수 없음 계산해서 바뀌어야하니까!
        //get 에서 받아서 set에서 가공하여 반환가능
    }
    
    static var isAlien: Bool = false
    //Type property -> 타입에 귀속이됨

    
}
var person = Person(firstName: "jason", lastName: "lee")

person.firstName = "Jim"

person.lastName

person.firstName

person.fullName

person.fullName = "jason Pak"

person.firstName
person.lastName

Person.isAlien


person.isPopular

var freddie = Person(firstName: "Freddie", lastName: "Mercury")

freddie.isPopular
