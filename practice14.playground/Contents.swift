import UIKit

//Property

struct Lecture: CustomStringConvertible {
   
    let name: String
    let instructor: String
    let numOfStudent: Int
//Stored Property
    
    var description: String{
        return "Title: \(name), Teacher: \(instructor)"
    }
    //Computed Property
}


