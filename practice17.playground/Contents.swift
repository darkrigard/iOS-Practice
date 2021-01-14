import UIKit

struct Lecture {
    
    var title: String
    var maxStudents: Int
    var numOfRegistered: Int = 0
    
    init(title: String, maxStudents: Int) {
        self.title = title
        self.maxStudents = maxStudents
    }
    
    init (title:String){
        self.title = title
        self.maxStudents = 10
    }
    
    func remainSeats() -> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
        
    }
    
    mutating func register() {
        numOfRegistered += 1
    }
    
    static var target: String = "anybod want to learn something"
}

var lec = Lecture(title: "woojin", maxStudents: 10)

lec.register()

lec.register()

lec.remainSeats()







