//
//  TodoItem.swift
//  ToDoList
//
//  Created by Personal on 4/13/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class Task: NSObject {
    let title: String
    let due: Date
    
    init(title: String, due: Date) {
        self.title = title
        self.due = due
    }
}
