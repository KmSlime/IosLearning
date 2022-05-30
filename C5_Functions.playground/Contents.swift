import UIKit

//func basic
let Name = "Liem"
func printName(){
    print(Name)
}
printName()

//func parameters
func Multiple (value: Int) {
    print("\(value) * 5 = \(value * 5)")}
Multiple(value: 10)

func printMultipleOf(multiplier: Int, andValue: Int) {
print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 4, andValue: 2)

//external name
func printMultipleOf(_ multiplier: Int, and value: Int) {
print("\(multiplier) * \(value) = \(multiplier * value)")
    
}
//printMultipleOf(multiplier: 4, and: 2)
printMultipleOf(4, and: 2)


//default
func printMultipleOf(_ multiplier: Int, _ value: Int = 1) {
print("\(multiplier) * \(value) = \(multiplier * value)")
}
//printMultipleOf2(4, 2)
printMultipleOf(4) //the missing value is default value if don't have any argument

//return
func multiply(_ number: Int, by multipler: Int) -> Int {
    return number * multipler
}
var result = multiply(4, by: 3)

//return multi value : and, by
func multiplyAndDivide(_ number: Int, by factor: Int)
-> (product: Int, quotient: Int) {
return (number * factor, number / factor) //this func return 2 value, 1st: product, 2nd: qotient
}
let results = multiplyAndDivide(4, by: 2)
let product = results.product
let quotient = results.quotient
//note: can take the func above to 2 func to return each value

//advanced parameter handling
func incrementAndPrint(_ value: inout Int) { //this inout: copy-in, copy-out
value += 1
print(value)
}
var value = 5
incrementAndPrint(&value) //parameter -- will change now
print(value)

//overloading
//func printMultipleOf(multiplier: Int, andValue: Int)
//func printMultipleOf(multiplier: Int, and Value: Int)
//func printMultipleOf(_ multiplier: Int, and Value: Int)
//func printMultipleOf(_ multiplier: Int, _ Value: Int)
//those func used above: so, the func can be overloading by change the parameter
//note: func can be overloading by:
//A different number of parameters.
//Different parameter types.
//Different external parameter names, such as the case with printMultipleOf.
func getValue() -> Int {
31
}
func getValue() -> String {
"Matt Galloway"
}

var valueInt = getValue() as Int
var valueString = getValue() as String

// a func as a variable
func add(_ a: Int, _ b: Int) -> Int{
a+b
}
var addvar = add //now addvar is a func
addvar(2, 4)

// call a func as a para in a func
func printResult (_ addvar: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = addvar(a, b)
    print("result", result)
}
printResult(add, 2, 5)
// now you can see it is a func in a func as variable

//no return: special type -> never
func noReturn() -> Never {
    while true {} // if a func true this will be no return
}


/// Calculates the average of three values
/// - Parameters:
/// - a: The first value.
/// - b: The second value.
/// - c: The third value.
/// - Returns: The average of the three values
func calculateAverage(of a: Double, and b: Double, and c:
Double) -> Double {
let total = a + b + c
let average = total / 3
return average
}
calculateAverage(of: 1, and: 3, and: 5)
//note: use triple / above a func will describe it well u see it in option


