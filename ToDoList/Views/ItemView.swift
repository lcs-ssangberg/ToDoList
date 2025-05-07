//
//  ItemView.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-06.
//
import SwiftData
import SwiftUI

struct ItemView: View {
    

    @Bindable var currentItem: ToDoItem
    
    
    var body: some View {
        Label(title: {
            TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
        }, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                //marking as done actions
                .onTapGesture {
                    currentItem.done.toggle()
                }
        })
    }
}

#Preview {
    
    let container = ToDoItem.preview
    
    return List {
        ItemView(currentItem: ToDoItem.someItem)
        ItemView(currentItem: ToDoItem.anotherItem)
    }
    .modelContainer(container)
    
}
