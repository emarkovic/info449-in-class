//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Generics
            // type param
var names: Array<String> = ["Fred", "Barney", "Wilma"]

// Protocols
// you can inherit from as many protocols as you would like
// some one elses code
protocol Pretty {
    func toPrettyString() -> String
}

func prettyPrinter(arguments: Array<Pretty>) {
    for a in arguments {
        print(a.toPrettyString())
    }
}
// your code
class Pet: Pretty {
    var name: String
    init(_ n: String) { self.name = n }
    
    func toPrettyString() -> String {
        return "Ny name is \(self.name)"
    }
}

let fluffy = Pet("Fluffy")
print(fluffy)

let scooter = Pet("Scooter")
let riley = Pet("Riley")

prettyPrinter(arguments: [fluffy, scooter, riley])

// Extensions
