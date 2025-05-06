//
//  LandingView.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-05.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: stored properties
    
    //current search
    @State var searchText = ""
    
    //add new to do item
    @State var newItemDescription = ""
    
    //list of to do items
    @State var toDos: [ToDoItem] = exampleItem
    
    //MARK: Computed properties
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                
                
                List(toDos) { toDo in
                    
                    ItemView(currentItem: toDo)
                        //delet to do item
                        .swipeActions {
                            Button("Delete", role: .destructive, action:{
                                delete(toDo)
                            })
                        }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Add To Do Item", text: $newItemDescription)
                    
                    Button("Add") {
                        //add new item
                        createToDo(withTitle: newItemDescription)
                        
                        
                        
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
                
            }
            
            
            
            .navigationTitle("To Do")
        }
        
        
    }
    
    //MARK: functions
    func createToDo(withTitle title: String) {
        
        //make instance
        let toDo = ToDoItem(title: title, done: false)
        
        
        //append to add item to list
        toDos.append(toDo)
    }
    
    func delete(_ toDo: ToDoItem) {
        
        //remove items from array
        toDos.removeAll { currentItem in
            currentItem.id == toDo.id
            
        }
    }
}

#Preview {
    LandingView()
}


