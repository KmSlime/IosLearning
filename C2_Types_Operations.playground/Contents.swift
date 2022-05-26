import UIKit

//type conversion
var int = 100
var dec = 12.5 as Double
//convert datatypes
int = Int(dec)
//double convert into int will drop a surplus, as you can see it drop a number after the dot point.

//mixed type
let hourlyRate: Double = 19.5
let hourWorked = 10
let totalCost = hourlyRate * Double(hourWorked)
// now you can see it will be a double in total cost

//Type inference
let youDecideInt = 12
let youDecideDouble = 2.5

//if you want it decide a datatype you want, convert it!
let wantDouble = Double(3) // now it is double
//another decleared for variable
let normalDecleared: Double = 3
let aliasDecleared = 3 as Double

//String and Character
//character: a character just only store a "character"
let thisIsCharacter: Character = "a"
// it also store an emoji

//String: while character only hold 1 character, String can store an array of character
let storeLotsOfCharacter = "lalala"

//concat string
var mess = "hello, "
let name = "Liem-kun"
mess += name //now you can see it will match each other

//convert a character into a String: like other conversion
let exclamationMark = "!" as Character
mess += String(exclamationMark)

//Interpolation
mess = "hello, \(name)" //as can be seen, it look like variable in C family
//also use with numberic
let number = 12/42.0
let description = "this is a variable \(number)" //now you can see it, a number stand beweet a String

//multi-line: use 3 double-quotes to display a multiple line paragraph
let multiLine = """
Now is endline
new line
a nother new line
"""
//note that you must start at a new line to set value to paragraph

//Tuple: some data come in pairs
let coordinates: (Int, Int) = (2, 3)
//inference
let example = (2, 0.3)
//
//a tuple look like an array 2 dimen
//access data inside tuple
let x1 = example.0 //acess by index
let y2 = example.1 //index

let coordinateNamed = (x2: 2, y2: 4)
let x5 = coordinateNamed.x2 //access by name variable
let y5 = coordinateNamed.y2 //access by name variable

//add one time multi part into tuple
let coordinate3D = (x5: 4, y5: 2, z5: 3)
let (x3, y3, z3) = coordinate3D

//can ingnore a certain element of tuple bye replace the corresponding part with underscore
let (x4, y4, _) = coordinate3D

//type aliases
// decleared a datatype of your using basic datatype, like struct in C
typealias Animal = String // a new Datatype called Animal which data type is string
let myPet: Animal = "Simi" as String
typealias Coordinator = (Int, Double)
let xy: Coordinator = (2, 4.2)

//challenge
//1
let coordinate1 = (2, 3)
//2
let coordinate2 = (row: 2, column: 3)
//4
let tuple = (d: 15, m: 2, y: 1005)
let day = tuple.d
//6
let valueTuple = (190, 1.5, 10)
let value1 = valueTuple.1
//8
let num = 10
let multiplier = 5
let summary = "\(num) multiplied by \(multiplier) equals \(num * multiplier)"
//9
let a = 9
let b = 100 as Int32
let c = 12 as Int8
//let answerOf9 = a + b - c

let dopi = Double.pi
let flopi = Float.pi

