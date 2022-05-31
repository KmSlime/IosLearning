import UIKit

//array

var array: [String] = [] // normal

var allZeros = Array(repeating: 0, count: 7) // this will make an array full of 0 with 7 index

var vowels = ["A", "E", "I", "O", "U"] // array can't be change

//accessing element
//using properties and methods
print(vowels.isEmpty) // isEmpty is variable to check if there's at least 1 member
//access
if vowels.count < 2 {
print("need at least 2 member")
} else {
    print("First: ", vowels.first as Any) //picked first
    print("Last: ", vowels.last as Any) //picked last
    print("Min: ", vowels.min() as Any)
}
//note: first and min will not always return the same value
print("example first of 2 3 1: ", [2, 3, 1].first as Any)
// > Optional(2)
print("example min of 2 3 1: ", [2, 3, 1].min() as Any)
// > Optional(1)

//access using subcripting, index
var firstLetter = vowels[0]
var secondLetter = vowels[1]

//new index array from an array slice
var upcomingArray = Array(vowels[1...3])
print(upcomingArray[2])

//checking for an element
func isEliminate(vowel: String) -> Bool {
    !vowels.contains(vowel)
}
isEliminate(vowel: "E") //checking eliminated
vowels[1...4].contains("E") //in an array has an "E"

//modify array
//append: add new at last
vowels.append("new")
//another way
vowels += ["new letter"]
//print all
print(vowels)

//insert at index
vowels.insert("another new letter", at: 5)
print(vowels)

//remove
var rm = vowels.removeLast()
print("\(rm) was removed")
print(vowels)
//another way
rm = vowels.remove(at: 6) //remove by index
print("\(rm) was removed")
print(vowels)

//updating element
vowels[5] = "edit element"
print(vowels)
print(vowels[1...3])

//moving element
let rmLetterLast = vowels.removeLast()
vowels.insert(rmLetterLast, at: 1)
print(vowels)

//swap
vowels.swapAt(1, 5)

//sort
vowels.sort()
print(vowels)

//iterating through
var indexOf = [2, 5, 6, 4, 1, 3]
for letter in vowels {
    print(letter)
}

for (index, letter) in vowels.enumerated()
{
    print ("\(index + 1). \(letter)")
}

func matchElement(in array: [String]) -> String {
    var sentences = ""
    for letter in array {
        sentences += letter
    }
    return sentences
}
print(matchElement(in: vowels))

//dictionaries
var IndexOfLetter = ["I": 1, "O": 5, "U": 2, "E": 4, "A": 3]
print(IndexOfLetter)
var pair: [String: Int] = [:] // ???
pair.reserveCapacity(20) //???
print(IndexOfLetter["T"])
print(IndexOfLetter["O"])
IndexOfLetter.isEmpty //not empty -> false
IndexOfLetter.count //5 member

//adding pair
var sentenceOfLetterA = [
    "firstPlace": "Ascending",
    "middlePlace": "Fade",
    "lastPlace": "Meta"
]

//add and update
sentenceOfLetterA.updateValue("lalala", forKey: "nonsense")
print(sentenceOfLetterA)
sentenceOfLetterA.updateValue("lalolo", forKey: "nonsense")
//shortest add
sentenceOfLetterA["makesense"] = "image"
print(sentenceOfLetterA)

//removing pair
sentenceOfLetterA.removeValue(forKey: "nonsense")
print(sentenceOfLetterA)

//iterating through dictionaries
for (letter, index) in IndexOfLetter {
    print("\(index). \(letter)")
}

//possible with key
for index in sentenceOfLetterA.keys {
    print("\(index), ", terminator: "") //no newline
    print("") //new line
}

//creating sets
var setNumber: Set<Int> = [1, 2, 4, 5]
print(setNumber)

//access
print(setNumber.contains(3)) //check value
//insert and remove is the same 
