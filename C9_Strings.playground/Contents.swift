import UIKit

//string as a collection
let string = "Liêm"
for char in string {
    print(char)
}
let cafeCombining = "cafe\u{0301}"
print(cafeCombining)
let firstIndex = cafeCombining.startIndex
print(firstIndex)
//let lastIndex = cafeCombining.endIndex
let lastIndex = cafeCombining.index(before:
cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]
print(lastChar)


//string as bi directional collection
let name = "Liêm"
print(name.reversed())
var backward = name.reversed() //??? value of backward
var backwardsNameString = String(backward)

let secondCharIndex =    backward.index(backward.startIndex,
offsetBy: 1)
let secondChar = name.reversed()[secondCharIndex]
print(secondChar)
//var backwardsNameString = String(backward)

//raw strings
//let raw1 = #"Raw "No Escaping" \(no interpolation!). Use all the
//\ you want!"#
//print(raw1)
"\""
//# allows all special character
let raw2 = ##"Aren’t we "# clever"##
print(raw2)
let can = "can do that too"
let raw3 = #"Yes we \#(can)!"#
print(raw3)

let fullName = "nguyen hong liem"
let spaceIndex = fullName.firstIndex(of: " ")!
let firstName = fullName[fullName.startIndex..<spaceIndex]

// character properties
let singleCharacter: Character = "x"
//singleCharacter.isASCII // check
let space: Character = " "
space.isWhitespace // check white space

let hexDigit: Character = "d"
hexDigit.isHexDigit // check hexa digital

let thaiNine: Character = "๙"
thaiNine.wholeNumberValue // convert kí tự


