//
//  Tasks.swift
//  ToDoList
//
//  Created by Jake Higgot on 2/21/18.
//  Copyright © 2018 Jake Higgott. All rights reserved.
//

import Foundation

class Tasks {
    var task: String
    var description: String
    var timeCompleted: Date
    var isDone: Bool
    
    init(task: String, description: String, timeCompleted: Date, isDone: Bool) {
        self.task = task
        self.description = description
        self.timeCompleted = timeCompleted
        self.isDone = isDone
        
    }
}
