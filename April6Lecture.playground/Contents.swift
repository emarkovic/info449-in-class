//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// never track money using floating points
let pocketChange = 1500;
// types dont match
//let newChange = pocketChange - 4.99;
let newchange = pocketChange - 499;
let afterDebts = 789;

// structures are value types
struct Money {
    var amount: Int
    let currency : String
    
    static func doSomething() {
        print("hello")
    }
}

var pocketChange2 = Money(amount: 1500, currency: "USD")
print(pocketChange2.amount)
pocketChange2.amount = pocketChange2.amount - 799;
print(pocketChange2)

Money.doSomething()

var yourchange = Money(amount: 1500, currency: "USD")
//this doesnt work b/c it is comparing by value
//if pocketChange2 == yourchange {
//    print("equal")
//} else {
//    
//}

// classes are reference types
class Person {
    let firstName: String
    var lastName: String
    var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    init() {
        self.firstName = ""
        self.lastName = ""
        self.age = 0
    }
}

var ted = Person(firstName: "Ted", lastName: "Neward", age: 45)
var ted2 = ted;
var otherTed = Person(firstName: "Ted", lastName: "Neward", age: 45)

// ted and ted2 point to the same person object
// ted and other ted are not the same person object

if ted == otherTed {
    // pointing to other ted
}

if ted === otherTed {
    // IS other ted
}






















