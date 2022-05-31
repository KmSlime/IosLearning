import UIKit

//closure basics
var multiplyClosure: (Int, Int) -> Int
var multiplyClosure2 = { (a: Int, b: Int) -> Int in
return a * b
}
var result = multiplyClosure2(4, 2)
 
multiplyClosure = { (a: Int, b: Int) -> Int in
a * b
}

multiplyClosure = {
$0 * $1 //first num & second num
}

func operateOnNumbers(_ a: Int, _ b: Int,
operation: (Int, Int) -> Int) -> Int {
let result = operation(a, b)
print(result)
return result
}

let addClosure = { (a: Int, b: Int) in
a + b
}
operateOnNumbers(4, 2, operation: addClosure)

//multiple trailing
//flow
func sequenced(first: ()->Void, second: ()->Void) {
first()
second()
}

//flow :: ??? ::: what is it doing for?
sequenced {
print("Hello, ", terminator: "")
} second: {
print("Liem.")
}

//closure with no return value
let voidClosure: () -> Void = {
print("Swift Apprentice is awesome!")
}
voidClosure()

func add (aaaa A: Int, bbbb B: Int) -> Int {
    return A + B
}
add (aaaa: 1, bbbb: 2)

//capturing from the enclosing scope
var count = 0
let increamentCount = {
    count += 1
}
increamentCount()
increamentCount()
increamentCount()
print(count)

func countingClosure() -> () -> Int { //??? void -> void -> int :: describe explain this is typealias
    var count = 0
    let increamentCount: () -> Int = {
        
        count += 1
        return count
    }
    return increamentCount
}

var count1 = countingClosure()
count1()
let names = ["ZZZZZZZZZ", "ASSS", "SAAAÂA", "REE", "E", "DCCC", "EEEE"]
print(names)
print(names.sorted())
names.sorted { //modify
    $0.count > $1.count
}
print(names)

//iteration over collection
let values = [1, 2, 3, 4, 5, 6]
values.forEach { //each value
//    print("lalala \($0) * \($0))")
print("\($0): \($0*$0)") //times: first values of "time" ^2
}

var prices = [1.5, 10, 4.99, 2.30, 8.19]
let largePrices = prices.filter { //a map closure (like func)
$0 > 5
}
print(largePrices)

let userInput = ["0", "11", "haha", "42"]
let numbers1 = userInput.map {
Int($0)
}
print(numbers1)
let userInputNested = [["0", "1"], [nil, "b", "c"], ["#"]]
let allUserInput = userInputNested.flatMap { //convert a collection into an array, not i can pass a nil value
$0
}
print(allUserInput)
let sum = prices.reduce(0) { //???
return $0 + $1
}
print("price Arr:", prices, " Sum: ", sum)

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
$0 + $1.key * Double($1.value)
}

//??? note page 180, animal icon, reduce(into: [])

//remove
let removeFirst = prices.dropFirst() //missing: defaults = 1
let removeFirstTwo = prices.dropFirst(2) // also have dropLast

//can select just the first or last elements of an array
let firstTwo = prices.prefix(2) //2 ký tự tiền tố
let lastTwo = prices.suffix(2) //hậu tố
print("2 first: \(firstTwo)")
print("2 last: \(lastTwo)")
//remove all
//prices.removeAll() // make an array empty

//lazy collections
//normal func
func isPrime(_ number: Int) -> Bool {
if number == 1 { return false }
if number == 2 || number == 3 { return true }
for i in 2...Int(Double(number).squareRoot()) {
if number % i == 0 { return false }
}
return true
}
//var primes: [Int] = [] // array int
//var i = 1 // start num
//while primes.count < 10 { // member < 10 do
//if isPrime(i) {
//primes.append(i)
//}
//i += 1
//}
//primes.forEach { print($0) }

//lazy
var primes = (1...).lazy
.filter { isPrime($0) }
.prefix(10)
primes.forEach { print($0) }
