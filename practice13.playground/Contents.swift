import UIKit

//Protocol

//규약? 약속? -> 지켜야할 약속, 꼭 구현되야만 하는 목록들 ex: todoList

//CustomStringConvertible

struct Lecture: CustomStringConvertible {
   
    let name: String
    let instructor: String
    let numOfStudent: Int
    
    var description: String{
        return "Title: \(name), Teacher: \(instructor)"
    }
}

func printLectureName(instructor: String, lectures: [Lecture]){
    
    var lectureName = ""
    for lecture in lectures {
        if instructor == lecture.instructor{
           //print("instructor: \(lecture.instructor), lecture: \(lecture.name)")
            lectureName = lecture.name
        }
    }
    print(lectureName)
}


let lec1 = Lecture(name: "ios", instructor: "woojin", numOfStudent: 15)
let lec2 = Lecture(name: "aos", instructor: "jojo", numOfStudent: 20)
let lec3 = Lecture(name: "bada", instructor: "skz", numOfStudent: 22)

let lectures = [lec1, lec2, lec3]

printLectureName(instructor: "woojin", lectures: lectures)


print(lec1)
