import UIKit

// nil value: a value is absenting
// sentinel value: special condition
// optional value
var errorCode: Int? // it mean errorCode will stand by int or nil
errorCode = 100 //stand for int
errorCode = nil //missing value

//unwrapping optionals
var result: Int? = 30
print(result)
//print(result + 1) // this will be error type

//force unwrapping
var unwrappingResult = result!
print("Result unwrap: \(unwrappingResult)") // int

//
var authorName: String? = "SLIME"
//authorName = nil
var unwrappedAuthorName = authorName!
print("error: \(authorName)")
//exception safe!!
if authorName != nil {
    print("Author is \(authorName)")
} else {
    print("no author here!")
}
//
//func para(aaa: String) {
//}
//
//para(aaa: authorName ?? "") // ??: if it false it will be ""

//optional binding
if let authorName = authorName {
print("Author is \(authorName)")
} else {
print("No author.")
}

if authorName != nil { // this will check if author != nil
    authorName!
}
//
//guard let authorName = authorName else { return aydytd }
//authorName


if let authorName = authorName {
print("Author is \(authorName)")
} else {
print("No author.")
}

var authorAge: Int? = 23
if let authorName = authorName,
let authorAge = authorAge {
print("The author is \(authorName) who is \(authorAge) years old.")
} else {
print("No author or no age.")
}

// double condition
if let authorName = authorName,
let authorAge = authorAge,
authorAge >= 40 {
print("The author is \(authorName) who is \(authorAge) years old.")
} else { // this will run because age 23
print("No author or no age or age less than 40.")
}

func calculateNumberOfSides(shape: String) -> Int? {
switch shape {
case "Triangle":
return 3
case "Square":
return 4
case "Rectangle":
return 4
case "Pentagon":
return 5
case "Hexagon":
return 6
default:
return nil
}
}
//if let
func maybePrintSides(shape: String) {
let sides = calculateNumberOfSides(shape: shape)
if let sides = sides {
print("A \(shape) has \(sides) sides.")
} else {
print("I don’t know the number of sides for \(shape).")
}
}

maybePrintSides(shape: "Square")
//guard let
func maybePrintSides2(shape: String) {
guard let sides = calculateNumberOfSides(shape: shape) else {
print("I don’t know the number of sides for \(shape).")
return
}
print("A \(shape) has \(sides) sides.")
}
maybePrintSides2(shape: "Pentagon")
maybePrintSides2(shape: "")

//nil coalescing
var optionalInt: Int? = 10
var musthaveResult = optionalInt ?? 100 // default value is 100 if optionalInt == nil. this will explain below
var musthaveResult2: Int
if let unwrapped = optionalInt { // can replace by guard let
    musthaveResult = unwrapped
} else {
    musthaveResult2 = 100
}

// now option set nil
optionalInt = nil
musthaveResult = optionalInt ?? 100 // the result now is 100

//challenge
//1
var name: String? = "liem"
//var age: Int = nil // this will be error because it not optional
let distance: Float = 26.7
var middleName: String? = nil

//2
var conquer: Int?
func divideIfWhole(div: Int, divisor: Int) -> Int? {
        if div % divisor == 0
        {
            return div / divisor
        } else {
            return nil
        }
    
}
conquer = divideIfWhole(div: 32, divisor: 5)
if conquer != nil {
//    conquer!
    print("Yep, it divides \(conquer!) times.")
} else {
    print("Not divisible :[")
}
