//
//  main.swift
//  ToDoList
//
//  Created by Jake Higgot on 2/21/18.
//  Copyright © 2018 Jake Higgott. All rights reserved.
//

import Foundation

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM-dd-yyyy hh:mm:ss"
dateFormatter.timeZone = Calendar.current.timeZone
var taskManagerArray = [Tasks]()
let date = NSDate()


// This is the main menu function. Everything happenes and is called in here.


func mainMenu(){
    
    print("To Do list")
    print("What would you like to do?")
    print("1. Add Task")
    print("2. Remove Task")
    print("3. Finish a task")
   print("4. Show All tasks")
    print("5. Quit program")
    let userInput = readLine()!
    
    if userInput == "5" {
        print("Have a fantastic day and stay focused!!!:)")
        exit(0)
    }
    if userInput == "1" {
        addTask()
    }
    if userInput == "4"{
        showTasks()
    }
    if userInput == "2" {
        removeTask()
    }
    if userInput == "3"{
        completeTask()
    }
}

// This function adds a game to the existing library. It stores it in array taskManagerArray. This function is called in mainMenu. Everything is called in the main menu.

func addTask(){
    print("What is the name of the Task? ")
    let taskName = readLine()!
    print("Please add a brief Desciption of the task:")
    let taskdesrcrip = readLine()!
    
    let newGame = Tasks(task: taskName, description: taskdesrcrip, timeCompleted: Date(), isDone: true)
    taskManagerArray.append(newGame)
    
}

// This function shows all the tasks stored in taskManagerArray. This function is called in the mainMenu Function.

func showTasks() {
    if taskManagerArray.count > 0 {
        for tasks in 0...taskManagerArray.count - 1{
            print("     ")
            print("     Task Number: \(tasks)")
            print("     Task Name: \(taskManagerArray[tasks].task)")
            print("     Task Description: \(taskManagerArray[tasks].description)")
            print("     Task not Completed? \(taskManagerArray[tasks].isDone)")
            if taskManagerArray[tasks].isDone == false {

                print("     Date completed \(dateFormatter.string(from: taskManagerArray[tasks].timeCompleted))")
            }
            print("     ")
            
        }
    } else{
        print("No tasks entered yet")
        return
    }
}

// This function shows the user the name of all the tasks and the task numbers and asks them which one they want to delete and removes the selected one. This is called in the main menu function.


func removeTask(){
    if taskManagerArray.count > 0  {
        for task in 0...taskManagerArray.count - 1{
            print("        ")
            print("        Game Number: \(task)")
            print("        Game Title: \(taskManagerArray[task].task))")
            print("        ")
        }
        print("What is the task number??")
        let taskRemove = Int(readLine()!)
        if taskRemove == nil || taskRemove! > taskManagerArray.count - 1 {
            print("Please enter in a valid task number. ")
            return
        }
        if taskRemove != nil && taskRemove! <= taskManagerArray.count - 1{
            taskManagerArray.remove(at: taskRemove!)
        }
        
        
    } else {
        print("  ")
        print("     No tasks entered yet.")
        print("  ")
        return
    }
    
}

// This function does checking out of tasks in the library and saves the date of completion to the item in the array. Called in the main menu function.

func completeTask(){
    if taskManagerArray.count > 0  {
        for task in 0...taskManagerArray.count - 1{
            print("        ")
            print("        Task Number: \(task)")
            print("        Task Description: \(taskManagerArray[task].task)")
            print("        ")
            
        }
        print(" What tasks have you completed?")
        
        let completeTask = Int(readLine()!)
        if completeTask != nil && (completeTask)! <= taskManagerArray.count - 1  {
            taskManagerArray[completeTask!].isDone = false
            taskManagerArray[completeTask!].timeCompleted = Date()
            
        }
        if completeTask == nil || completeTask! > taskManagerArray.count - 1  {
            print("     Please enter a valid task number")
        } else{
            print("     No tasks entered.")
            return
        }
    }
}

// This is the function that just runs the code.

while true {
    mainMenu()
    print(date)
}








