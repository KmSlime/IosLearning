import UIKit

//stored properties
struct Contact {
    let fullName: String = "Slime Nguyen" // cannot change
    var phoneNum: String
    var nothing = "klalalala" //default value
}
var person = Contact(phoneNum: "012345678")
print(person)
//access
person.fullName
//modify value
person.phoneNum = "0123456778"
print(person)
//note that cannot assign a constants

//computed properties
struct TV {
    var height: Double
    var width: Double
//    var diagonal: Int {
//    let result = (height * height +
//    width * width).squareRoot().rounded() // căn 2 cạnh góc vuông
//    return Int(result)
//    }
    
    var diagonal: Int {//  getter setter
      get {
      let result = (height * height +
      width * width).squareRoot().rounded()
      return Int(result)
      }
      set {
          let ratioWidth = 16.0
          let ratioHeight = 9.0
          let ratioDiagonal = (ratioWidth * ratioWidth +
          ratioHeight * ratioHeight).squareRoot()
          height = Double(newValue) * ratioHeight / ratioDiagonal
          width = height * ratioWidth / ratioHeight
      }
  }
}

var samsung = TV(height: 3, width: 4)
print(samsung.diagonal)
samsung.diagonal = 5 //user setter

//type properties
struct Level {
let id: Int
var boss: String
var unlocked: Bool
    static var highestLevel = 1 //static word will be accessed wherever in the class/ program
}
let level1 = Level(id: 1, boss: "Pikachu", unlocked: true)
let level2 = Level(id: 2, boss: "Raichu", unlocked: false)
let level3 = Level(id: 3, boss: "Charizard", unlocked: false)
let level4 = Level(id: 4, boss: "Mew", unlocked: false)

//let highestLevel =  level3.highestLevel
Level.highestLevel

//property observers
struct LevelPlayer {
    static var highestLevel = 1
    let id: Int
    var boss: String
    var unclocked: Bool {
        didSet { //didSet::willSet ??? like Try catch???
            //didSet: before value change, willset: After value change
            if unclocked && id > Self.highestLevel { //??? Self: used for closure or properties //like "this" in java
                Self.highestLevel = id
            }
        }
    }
}

let player1 = LevelPlayer(id: 1, boss: "Lugia", unclocked: true)


//limiting a variable
struct LightBulb {
    static let maxCurrent = 40
    var current = 0 {
        didSet{
            if current > LightBulb.maxCurrent {
                print("""
                    Current is too high,
                    falling back to previous setting.
                    """)
                current = oldValue
            }
        }
    }
}

var light = LightBulb()
light.current = 100
light.current = 20

//lazy properties
struct Circle {
    lazy var pi = {
        ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    }()
    var radius = 0.0
    var circumference: Double {
        mutating get {
            pi * radius * 2
        }
    }
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 5.2)
print(circle.pi, circle.circumference)
