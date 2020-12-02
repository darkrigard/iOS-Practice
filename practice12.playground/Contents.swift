import UIKit

//도전과제

// 1. 강의이름, 강사이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이와 강사이름을 받아서, 해당강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

struct Lecture {
    
    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLectureName(instructor: String, lectures: [Lecture]) {
    
    var lectureName = ""
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
            
        }
    }
    print("lecture name is \(lectureName)")
}

let lec1 = Lecture(name: "ios", instructor: "woojin", numOfStudent: 10)

let lec2 = Lecture(name: "aos", instructor: "jonn", numOfStudent: 4)

let lectures = [lec1, lec2]

printLectureName(instructor: "woojin" , lectures: lectures )

