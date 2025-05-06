//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-05.
//

import Foundation

struct ToDoItem: Identifiable {
    
    
    let id = UUID()
    
    var title: String
    
    var done: Bool
    
    
}

let firstItem = ToDoItem(title: "Chem Work", done: false)

let secondItem = ToDoItem(title: "Comp Sci Post", done: true)

let thirdItem = ToDoItem(title: "Physics Work", done: true)

let exampleItem = [
    
    firstItem,
    secondItem,
    thirdItem,
    

]
