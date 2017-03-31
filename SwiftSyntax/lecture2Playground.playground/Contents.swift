//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"
print(str)

var a = 6
var b = 3

// optionals
// can be nil or a value
var myStr: String?
if let myStrVal = myStr {
    var newStr = myStrVal + "suffix"
    print(newStr)
}


// the optional is actually a class that wraps your variable
var str2: String?
var str3: Optional<String>
var str4: Int?

let money = 42000
//le moneyD: Double = money // illegal
let moneyD2:Double = Double(money);

print("i have $\(money) dollars");
print("i have $\(money * 2 ) dollars");
print("i have $" + String(money) + " dollars")
