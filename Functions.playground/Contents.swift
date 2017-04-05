//: Playground - noun: a place where people can play

import UIKit

func sayHello(name: String) -> String {
    return "hello \(name)"
}

print(sayHello(name: "ena"))

func rollDice(numDice num: UInt, times: Int, withBonus: Int) {
    print(num)
}

rollDice(numDice: 2, times: 4, withBonus: 10000)

func add(_ nums: Double...) -> Double{
    var sum = 0.0;
    for num in nums {
        sum += num
    }
    return sum
}

print(add(1, 2, 3, 4, 5))

func passByRef(num: inout Int) {
    num = num + 1
}

var mynum = 1
print(mynum)
passByRef(num: &mynum)
print(mynum)

let addFunc = {(left: Int, right: Int) -> Int in return left + right}
print(addFunc(40, 100))

func greetLTR(name: String) -> String {
    return "Hello \(name)"
}

func greetRTL(name: String) -> String {
    return "\(name) Hello"
}

func greet(name: String, greetFcn: (String) -> String) {
    print(greetFcn(name))
}

greet(name: "Sam", greetFcn: greetLTR)
greet(name: "Sam", greetFcn: greetRTL)


greet(name: "Sam") { name in
    return "hello \(name) hello"
}

typealias Age = UInt8
let myage: Age = 12

let nums = [1, 2, 3]
print(nums[0])

var multitypeArray = [1, 2, "three"] as [Any]
multitypeArray.append(1.2)

for n in multitypeArray {
    print(n)
}
let myDict = ["a": 1, "b": 2]
let myDict2 = ["a": 1, "b": "ben"] as [String: Any]

func arrayParam(sumMe: [Double]) {
    
}

func dictParam(sumMe: [Double: Int]) {
    
}
                    // cant have any to any
func dictParam(sumMe: [NSObject: Any]) {
    
}

var explicitOptString: Optional<String>
var optString: String?
optString = "info 449 is lots of fun"
print(explicitOptString?.hash)
if (explicitOptString != nil) {
    print("not nil")
}
print(optString!)


enum CompasPoint: Int {
    case North = 0
    case South = 180
    case East = 90
    case West = 270
}
enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var direction = CompasPoint.North
//switch direction {
//    case .North: print("brr cold")
//    case .South: print("Watch out for penguins")
//}
print(direction.rawValue)
print(CompasPoint.South.rawValue)

CompasPoint.init(rawValue: 180)

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

let barcode = Barcode.UPCA(8, 6789, 3)
let barcode2 = Barcode.QRCode("45678")







