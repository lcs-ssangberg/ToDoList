//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-05.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    
    var title: String
    
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = ToDoItem(title: "Chem Work", done: false)

let secondItem = ToDoItem(title: "Comp Sci Post", done: true)

let thirdItem = ToDoItem(title: "Physics Work", done: true)

let exampleItem = [
    
    firstItem,
    secondItem,
    thirdItem,
    

]
