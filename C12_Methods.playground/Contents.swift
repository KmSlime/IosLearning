import UIKit

//method refresher
var numbers = [1, 2, 3]
numbers.removeLast() // method like removeLast
numbers // [1, 2]

//comparing methods to computed properties???
var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
//struct SimpleDate {
//    var month: String
//}
//func monthsUntilWinterBreak(from date: SimpleDate) -> Int {
//    months.firstIndex(of: "December")! - months.firstIndex(of: date.month)!
//}

//let date = SimpleDate(month: "October")
//date.monthsUntilWinterBreak(from: date)

//struct SimpleDate {
//    var month: String
//    func monthsUntilWinterBreak(from date: SimpleDate) -> Int {
//        months.firstIndex(of: "December")! - months.firstIndex(of: date.month)!
//    }
//}
//var date = SimpleDate(month: "April")
//date.monthsUntilWinterBreak(from: date)
//
//func monthsUntilWinterBreak() -> Int {
//months.firstIndex(of: "December")! - months.firstIndex(of: self.month)!
//}
 
//introducing initalizer
struct SimpleDate {
    var month: String

    init() { //run first
        month = "August" // assign value for stored properties of structure
    }

    func monthsUntilWinterBreak() -> Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
}
var date = SimpleDate()
print(date.month)
print(date.monthsUntilWinterBreak())

//Init in struct
struct normalDate {
    var month: String
    var day: Int
    init(month: String, day: Int) { //like set
        self.month = month
        self.day = day
    }
    func monthsUntilWinterBreak() -> Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
}

let valentinesDay = normalDate(month: "February", day: 14)
print(valentinesDay.month, valentinesDay.day)

//default values and init
struct anotherDay {
    
    //default
    var month = "January"
    var day = 2
    
    //mutating method: add
    mutating func advance() { //??? mutating for what?
        day += 1
    }
    func monthsUntilWinterBreak() -> Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
    
}
var date1 = anotherDay()

//type methods
struct Math {
    static func factorial(of number: Int) -> Int {
    (1...number).reduce(1, *)
    }
}
Math.factorial(of: 6)


//extension adding to an existing structure
extension Math { //extending
    static func primeFactors(of value: Int) -> [Int] {
        var remainingValue = value //add
        var testFactor = 2 //add
        var primes: [Int] = [] //add
        while testFactor * testFactor <= remainingValue {
            if remainingValue % testFactor == 0 {
                primes.append(testFactor)
                remainingValue /= testFactor
            } else {
                testFactor += 1
            }
        }
        if remainingValue > 1 {
            primes.append(remainingValue)
        }
        return primes
    }
}
Math.primeFactors(of: 27)


//keeping the compiler-generated initializer using extensions
struct SimpleDate2 {
    var month = "January"
    var day = 1
    func monthsUntilWinterBreak() -> Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
    mutating func advance() {
        day += 1
    }
}
extension SimpleDate2 {
    init(month: Int, day: Int) {
        self.month = months[month-1]
        self.day = day
    }
}

let finishedDate = SimpleDate2(month: 10, day: 20)
