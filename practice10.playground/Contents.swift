import UIKit

struct Grade {
    var letter: Character
    var point: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
   
    var grades: [Grade] = []
    
    required init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
    }
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}


class StudentAthlete: Student {
    var minimumTraningTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    required init(firstName: String, lastName: String) {
        //phase1
        self.sports = []
        super.init(firstName: firstName, lastName: lastName)
    }
    
    init(sports: [String], firstName: String, lastName: String) {
        
        //phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName) //자식프로퍼티를 초기화할경우 부모클래스의 프로퍼티도 같이 초기화해줘야함 위로옮길경우 에러남 2phase initialization
        
        //phase 2
        
        train()
    }
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}





