import UIKit

var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a * b}

let result = multiplyClosure(4,2)
