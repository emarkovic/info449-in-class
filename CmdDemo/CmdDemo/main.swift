//
//  main.swift
//  CmdDemo
//
//  Created by Personal on 3/30/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//

import Foundation

print("Hello, World!")

while true {
    let response = UInt(readLine(strippingNewline: true)!)
    if response != nil {
        print("42 + \(response!) = \(42 + response!)")
    } else {
        print("you did not enter a valid number")
    }
}



