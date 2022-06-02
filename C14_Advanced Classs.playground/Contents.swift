import UIKit

//inheritance
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}
class Person {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
//class Student { //it's look like a person
//    var firstName: String
//    var lastName: String
//    var grades: [Grade] = []
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//    func recordGrade(_ grade: Grade) {
//        grades.append(grade)
//    }
//}

class Student : Person { // inheritance
    var grades: [Grade] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let Slime = Person(firstName: "H L", lastName: "N")
let Liem = Student(firstName: "H L", lastName: "N")

print(Slime.firstName + " " + Liem.lastName)
let history = Grade(letter: "B", points: 9.0, credits: 3.0)
Liem.recordGrade(history)
print(Liem.grades)

//note: only one class have one subclass and no limit many depth of subclassing
class BandMember: Student {
    var minimumPracticeTime = 2
}
class OboePlayer: BandMember {
    //override
    override var minimumPracticeTime: Int {
        get { //get
            super.minimumPracticeTime * 2
        }
        set { //set
            super.minimumPracticeTime = newValue / 2
        }
    }
}

//polymorphism: 1 object -> n instance
func phonebookName(_ person: Person) -> String {
    "\(person.lastName), \(person.firstName)"
}
let person = Person(firstName: "Liem", lastName: "Nguyen")
let oboePlayer = OboePlayer(firstName: "Slime", lastName: "lalala")
phonebookName(person)
phonebookName(oboePlayer)

var student = Student(firstName: "lalalla", lastName: "Nguyen")
student = oboePlayer
//oboePlayer as Student
//student as? BandMember
(student as? BandMember)?.minimumPracticeTime // 2*2(of minimum band) = 4
print((student as? BandMember)?.minimumPracticeTime) // optional

(student as! BandMember).minimumPracticeTime //forece unwrap
print((student as! BandMember).minimumPracticeTime) //force unwrap
if let student = student as? BandMember { // check unwrap
    print(student.minimumPracticeTime)
}

func afterClassActivity(for student: Student) -> String {
"Goes home!"
}
func afterClassActivity(for student: BandMember) -> String {
"Goes to practice!"
}
afterClassActivity(for: oboePlayer)
afterClassActivity(for: oboePlayer as Student)

//inheritance, methods and overrides
class StudentAthlete: Student {
    var failedClasses: [Grade] = []
    override func recordGrade(_ grade: Grade) { //need to override before redecleare a func in base class has decleared
        super.recordGrade(grade) // call a record of base class
        if grade.letter == "F" {
            failedClasses.append(grade)
        }
    }
    var isEligible: Bool {
        failedClasses.count < 3
    }
}

//preventing inheritance using 'final' in front of class/func
//init and inheritance: a sub class required to call super.init becasue superclass won't able to provide initial states for all ít stored properties
class StudentAthlete2: Student {
    var sports: [String]
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName) // init value of sub class and base class
    }
}
