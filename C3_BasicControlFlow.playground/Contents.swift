import UIKit

//comparison
let yes = true
let no = false

//boolean operator
let doesOneEqualTwo = (1 == 2) //==: quality operator, comparison
let doesOneNOTEqualTwo = (1 != 2) //!=:
//another type
let doesOneNOTEqualTwo2 = !(1 == 2)
let greater = (1 > 2)
let lessThan = (1 < 2)

let and = true && true
let or = true || false // if 1 true in or, there will be true
let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4 // if 1 false in &, there will be false
let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4 //2 false
let andOr = (1 < 2 && 3 > 4) || 1 < 4

//string equality
let guess = "dog"
let dogEqualsCat = guess == "cat" //equals or CompareTo
let order = "cat" < "dog"

//togle in a bool (switch value)
var switchState = true
switchState.toggle()
switchState.toggle()

//if statement
if 2 > 1{
    print("hello")
}

let hidden = 5
if(hidden == 6){
  print("wrong")
}else {
  print("test passing")
}
// note that the statement has a syntax like other languagues


//Encapsulating variable
var hWorked = 45
var price = 0

if hWorked > 40 {
 let hOver40 = hWorked - 40
    price += hOver40 * 50
    hWorked -= hOver40
 }
price += hWorked * 25
print(price)

//ternary condition
let a = 5
let b = 10
let min = a < b ? a : b
let max = a > b ? a : b

//loops
var loopWheel = 5
while loopWheel < 100 {
    loopWheel = loopWheel + (loopWheel + 1)
    print(loopWheel)
}

//repeat while :  do while in c
loopWheel = 5
print("repeat time:")
repeat {
    loopWheel = loopWheel + (loopWheel + 1)
    print(loopWheel)
} while loopWheel < 100
// note: use break to break loops

//challenge
//1: the variable haven't decleared yet
//let firstName = "Liem"
//if firstName == "Liem" {
//let lastName1 = "Nguyen"
//} else if firstName == "slime" {
//let lastName1 = "Km"
//}
//let fullName = firstName + " " + lastName1

//2
let answer1 = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)

//key points
//== equal
//!= not equal
//< less than
//> greater than
//<= less than or equal
//>= greater than or equal
