import UIKit

//structure

let store1 = (x:3, y:5, name:"gs")
let store2 = (x:4, y:6, name:"seven")
let store3 = (x:1, y:7, name:"cu")


func distance(current: (x:Int, y:Int), target: (x: Int, y: Int)) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}


func printCloseStore(currentLocation:(x:Int, y:Int), stores: [(x: Int, y: Int, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}








