import UIKit

struct Grade {
    var letter: Character
    var point: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
   
    var grades: [Grade] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let jay = Person(firstName: "Jay", lastName: "Lee")

let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName

jason.firstName

jay.printMyName()

jason.printMyName()



let math = Grade(letter: "B", point: 8.5, credits: 3.0)
let history = Grade(letter: "A", point: 10, credits: 4.5)
jason.recordGrade(math)

jason.recordGrade(history)

jason.grades.count

class StudentAthlete: Student {
    var minimumTraningTime: Int = 2
    var trainedTime: Int = 0
    
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

var athlete1 = StudentAthlete(firstName: "yuna", lastName: "kim")

athlete1.trainedTime

athlete1.train()

athlete1.trainedTime

var athlete2 = FootballPlayer(firstName: "heungmin", lastName: "son")

athlete2.train()

athlete2.trainedTime

athlete2.footballTeam

func printFirstName(_ person: Person) {
    print("---> first name: \(person.firstName)")
}

printFirstName(athlete1)

printFirstName(jay)

athlete1 = athlete2 as StudentAthlete //upercasting

athlete1.train()
athlete1.trainedTime
//athlete1.footballTeam


//downcasting
if let son = athlete1 as? FootballPlayer {
    print("---> name: \(son.lastName), team: \(son.footballTeam)")
}



