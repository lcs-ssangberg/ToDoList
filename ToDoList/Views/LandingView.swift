//
//  LandingView.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-05.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    //MARK: stored properties
    
    //current search
    @State var searchText = ""
    
    //add new to do item
    @State var newItemDescription = ""
    
    //list of to do items
    @Query var toDos: [ToDoItem]
    
    //access the model context (data modifications ect)
    @Environment(\.modelContext) var modelContext
    
    //MARK: Computed properties
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                
                
                List {
                    ForEach(toDos) { toDo in
                        
                        ItemView(currentItem: toDo)
                 
                    }
                    .onDelete(perform: removeRows)
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
            
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
        
        
    }
    
    //MARK: functions
    func createToDo(withTitle title: String) {
        
        //make instance
        let toDo = ToDoItem(title: title, done: false)
        
        
        //use model context to add new item
        modelContext.insert(toDo)
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(toDos[offset])
        }
    }
}

//#Preview {
//    LandingView()
//}


