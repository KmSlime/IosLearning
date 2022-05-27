import UIKit
import Foundation

//countable ranges datatypes
let closeRange = 0...5 // 0, 1, 2, 3, 4, 5
//countable half-open Range
let  halfOpenRange = 0..<5 // 0, 1, 2, 3, 4
// for what?

//randome interlude
var n = 10
while Int.random(in: 1..<n) != 1{
    print("runing")
}

//for loops
let numlist = 0...10
for num in numlist {
    print(num)
}
//example
var count = 10
var sum = 0
for i in 1...count {
sum += i
}

//where: condition in for loops
sum = 0
for i in 1...count where i % 2 == 1 { // as you can see it only access odd number
sum += i
}
print(sum)


//condition and labeled statements
sum = 0
for row in 0..<10 {
    if row % 2 == 0 { //even num
        continue // jumpt into next round
    }
    for column in 0..<10 {
        sum += row * column
    }
}
print("sum1: ", sum)

sum = 0
for row in 0..<10 where row % 2 != 0 {
    for column in 0..<10 {
        sum += row * column
    }
}
print("sum2: ", sum)

// switch case
var num = 10
switch num { // num is choice or condition
    case 0: print("0")
    case 1: print("2")
    case 10: print("10")
default: print("lalala")
}
//can be with string
var string = "lelele"
switch string {
case "lalala", "lelele":
    print("hôhho")
case "else": print("default")
default: print("nothing")
}
//multiple case than if, which range
let hourOfDay = 12
var timeOfDay = ""
switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
timeOfDay = "Morning"
case 12...16:
timeOfDay = "Afternoon"
case 17, 18, 19:
timeOfDay = "Evening"
case 20...23:
timeOfDay = "Late evening"
default:
timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

//mathematic in case
switch num {
case let x where x % 2 == 0:
print("Even")
default:
print("Odd")
}

// pattern matching: in this case a "x" is not necessary!!
switch num {
case _ where num % 2 == 0:
print("Even")
default:
print("Odd")
}

//Partial matching: a part match, _ stand for any value
var coordinates = (x: 3, y: 2, z: 5)
switch coordinates {
case (0, 0, 0): // 1
print("Origin")
case (_, 0, 0): // 2: just only compare with y, z
print("On the x-axis.")
case (0, _, 0): // 3: x, z
print("On the y-axis.")
case (0, 0, _): // 4: x, y
print("On the z-axis.")
//case (3, 2, _): // this case will be match
//print("On the z-axis.")
default: // 5
print("Somewhere in space")
}

//challenge
//1
sum = 0
for i in 0...5 {
sum += i
}

//2
var aLotOfAs = ""
while aLotOfAs.count < 10 {
    print(aLotOfAs.count, ": ", aLotOfAs)
    aLotOfAs += "a"
}

//3
coordinates = (1, 1, 1)
switch coordinates {
case let (x, y, z) where x == y && y == z:
print("x = y = z") // this will be matched
case (_, _, 0):
print("On the x/y plane")
case (_, 0, _):
print("On the x/z plane")
case (0, _, _):
print("On the y/z plane")
default:
print("Nothing special")
}

//5
while count >= 0 {
    print(count);
    count -= 1
}
