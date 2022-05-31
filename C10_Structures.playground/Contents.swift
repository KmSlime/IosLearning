import UIKit


let restaurantLocation = (3, 4)
let restaurantRange = 2.5
//pytago
func distance(from source: (x: Int, y: Int),
to target: (x: Int, y: Int)) -> Double {
let distanceX = Double(source.x - target.x)
let distanceY = Double(source.y - target.y)
return (distanceX * distanceX +
distanceY * distanceY).squareRoot()
}
var result = distance(from: (5, 5), to: (3, 4))

func isInDeliveryRange(location: (x: Int, y: Int)) -> Bool {
let deliveryDistance = distance(from: location, to: restaurantLocation)
return deliveryDistance < restaurantRange
}
isInDeliveryRange(location: (x: 5, y: 5))


//now is the struct define

struct Slime { // init
    let name: String = "Nguyen Hong Liem"
    let dob = "11/08/99" as String
    let loca: [Int: Int]
    var fav: String = ""
}

let defineSlime = Slime(loca: [12: 15])

//a struct inside a struct
struct Laptop {
    let Own: Slime
    var LaptopName: String
}
var storeLaptop = Laptop(Own: defineSlime, LaptopName: "Mac M1")

//accessing members
//print(defineSlime.name)
print(storeLaptop.Own)
print(storeLaptop.Own.name)
print(storeLaptop.LaptopName)

//modify
var fixedSlime = Slime(loca: [1:2], fav: "Slime")
fixedSlime.fav = "fixed"
print(fixedSlime)

let Bill = [defineSlime, fixedSlime]

func printBill() -> () {
    for user in Bill {
        print(user.fav)
    }
}

printBill()

//struct as values
var SlimeName = defineSlime.name
print(SlimeName)

// annotation @
// conforming to a protocol
public protocol firstExample {
    // a texual representations of this instance
    var description: String { get }
}

struct SlimeDefine: firstExample {
    
    let basic: Slime
    var MoreInfo: String
    var description: String {
        """
        Name of Slime: \(defineSlime.name)
        Slime dob: \(defineSlime.dob)
        """
    }
    //overlap???
}



