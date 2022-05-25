import UIKit
import Foundation

var str = "Hello, playground"
print("Yo Liêm, this is a first Ios app of Liêm!!")
print("sum:", 2+3)
var a = 2, b = 3
var c = a * b
print("result of c:", c)
2+3 //aloha it's oke
//2+ 5 //a it's error!!
print("numberic", 27 / 2) //print a numberic
print("decimal", 27.0 / 2.0) //print a decimal
print("remainder numberic", 28 % 10) //print a part of divide
print("truncates: ", (28.0).truncatingRemainder(dividingBy: 10.0)) // remainder of decimal ???
//bitwise - shift operate
//left shift: move array of bit to the left, and the blank is 0
print("left shift: ", 1<<3) // 3 stand for 00000100 (2^3) and 1 stand for 00000001 (2) -> left is operator, right is step of bits

//right shift: the blank turn into 0
print("right shift: ", 32>>2) //32 sf 00010000 (2^5) and right shift is 2 bits, stand for 00000100 (2^3 = 8)

print("multible: ", 350 / 5 + 2) // (multible is higher than addition)
print("group: ", 350 / (5 + 2)) // (group is higher than multible)
print("const pi: ", Double.pi)
print("Math func sin: ", sin(45 * Double.pi / 180))
print("Math func cos: ", cos(135 * Double.pi / 180))
print("Square of 9: ", (9).squareRoot())
print("Square of 2: ", (2).squareRoot())
print("min: ", min(-5, -10))
print("max: ", max(5, 10))

//constants: once time have decleared that can't change its data.
let number: Int = 10 //declares a constant name "number" and data type is Int, then set the value of number equals 10
//note: "=" is assignment operator
let money: Double = 1000.0001 // a constant variable name "money" has value 1000.0001
// Double is more popular than Float, so uses Double.

//Var (variable)
var aNum: Int = 1
aNum = 2 // instead of let constant can't change value data, var Variable can change as many times as you want
aNum = 3 //another change value

/* Coding convention names: camelCase, PascalCase...
 * Using meaningful names: userAge, CarType...
 * In swift, can use unicode characters like icon...
 */

// Increasement and Decreasement
var count: Int = 1
count += 1 //count = count + 1 after excuse
count -= 1 // the same addiction

//Mini exercises
//1
let myAge: Int = 23

//2
var averageAge: Double = Double(myAge)
averageAge = Double((30 + averageAge) / 2)

//3
let testNumber: Int = 1
let evenOdd: Int = testNumber
//change: testNumber = 12 //error warning

//4
var answer: Int = 0
answer+=1
answer += 10
answer *= 10
print("Excersise: ", answer>>3)

//challenges
//1 variable
let liemAge: Int = 23
var dogs: Int = 0
dogs += 1
print("New Puppy: ", dogs)

//2 consider
var age: Int = 16
print(age)
age = 16
print(age)

//3 build code
let x: Int = 46
let y: Int = 10
let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)
print("a1:", answer1, ", a2: ", answer2, ", a3: ", answer3)

//4 parentheses
8 - 4 * 2 + 6 / 3 * 4
8 - (4*2) + (6/3*4)
8 - (4*2) + ((6/3)*4)
8 - 4*2 + (6/3)*4
(8 - 4*2) + 6/3*4

//5 average
let rating1: Double = 12.3
let rating2: Double = 13.2
let rating3: Double = 23.1
var everageRating = (rating1 + rating2 + rating3)/3

//6 multiply
let voltage: Double = 123.3
let current: Double = 132.2
let power: Double = voltage*current

//7 divide
let resistance = (power / current).squareRoot()


//8 random
let randomNumber: Int = Int(arc4random())
let diceRoll = Int (1+Int(arc4random())%5)

//9 Quadratic
let i: Double = 3
let j: Double = -2
let k: Double = -5
let root1: Double = j*j - sqrt(j*j - (4*i*k))
let root2: Double = j*j - sqrt(j*j + (4*i*k))
