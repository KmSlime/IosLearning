import UIKit

var str = "Hello, chapter 13"

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { // a class must have initiated
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        #"\#(lastName) \#(firstName)"#
    }
}

let Slime1 = Person(firstName: "Hồng Liêm", lastName: "Nguyễn")
print(Slime1.fullName)


//references types // guest that look like a pointer in c [value][point index] -> [index]
class SimplePerson {
    let name: String
    init(name: String) {
        self.name = name
    }
}
var p1 = SimplePerson(name: "Hồng Liêm") // a class
var p2 = p1
//note: p1 and p2 use the same (actual) value, p2 would copy the value of p1

//heap vs stack
//note: only 1 heap for 1 app, 1 thread have their own stack

var User = Slime1
User.fullName
Slime1.fullName

//object identity
print("check 'is Slime': ", User === Slime1) // same type, same value

var imposters = (0...100).map { _ in
    Person(firstName: "Hồng Liêm", lastName: "Nguyễn")
}

//imposters.contains {
//    $0.firstName == Slime.firstName && $0.lastName == Slime.lastName
//}

//methods & mutability
struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}
class Student {
    var firstName: String
    var lastName: String
    var grades: [Grade] = [] // a struct in a class
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}
var Slime2 = Student(firstName: "Slime", lastName: "Nguyen")
let history = Grade(letter: "B", points: 9.0, credits: 3.0)
var math = Grade(letter: "A", points: 16.0, credits: 4.0)
Slime2.recordGrade(history)
Slime2.recordGrade(math)

//mutability and constant
//If declared Slime as a variable instead, it would be able to assign to it another instance of Student on the heap
Slime2 = Student(firstName: "lalalala", lastName: "Nguyen")
//slime2 -reference-> student("slime")
//                    student("lalalala")

//var credits = 0.0
//func recordGrade(_ grade: Grade){
//    grades.append(grade)
//    credits += grade.credits
//}


//inheritance :: extending a class using an extension
extension Student {
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

//Structures vs. classes recap
//Structures
//• Useful for representing values.
//• Implicit copying of values.
//• Becomes completely immutable when declared with let.
//• Fast memory allocation (stack).
//Classes
//• Useful for representing objects with an identity.
//• Implicit sharing of objects.
//• Internals can remain mutable even when declared with let.
//• Slower memory allocation (heap).
