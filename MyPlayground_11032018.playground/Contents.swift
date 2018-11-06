import UIKit

let myName = "David"

var myAge  = 56
myAge = 57

if myAge > 50 {
    print("I'm old")
} else {
    print("I'm getting there")
}

myAge > 50 ? "I'm old" : "I'm not old"

switch myAge {
case 30...100: print("I'm old")
case 18...29: print("I'm and adult")
case 0...17: print("I'm young")
default: print("I'm not sure")
}

var colors = ["red", "green", "blue"]
colors[0]
colors.append("orange")
colors.remove(at:1)

for color in colors {
    print("this color is \(color)")
    // Inject variable above by using backward slash.
}

func pointToRetina(point: Int) -> Int {
    return point * 2
}

pointToRetina(point: 320)

struct UserStruct {
    var name: String
    var age: Int
    var job: String
}

var user = UserStruct(name: "David", age: 57, job: "Creative Director")

user.name

class UserClass {
    var name: String
    var age: Int
    var job: String
    
    init(name: String, age: Int, job: String) {
        self.name = name
        self.age = age
        self.job = job
    }
}

// OPTIONALS
// You declare a question mark for a variable that may not return a value.

var answer: String?
UILabel().text = answer


// When sure that there is value - add an exclamaition mark.
var answerString: String!

// You may not want to run code without a value - use OPTIONAL BINDING

if let sureAnswer = answer {
    UILabel().text = sureAnswer
}

UILabel().text = answer ?? ""





