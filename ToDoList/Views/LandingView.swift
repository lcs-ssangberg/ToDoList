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
    
    //MARK: Computed properties
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                List {
                    
                    ItemView(title: "Study for Chem", done: false)
                    
                    ItemView(title: "Stucy for physics", done: true)
                    
                    ItemView(title: "study for math", done: false)
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Add To Do Item", text: $newItemDescription)
                    
                    Button("Add") {
                        //add new item
                        
                        
                        
                    }
                    .font(.caption)
                }
                .padding(20)
                
            }
            
            
            
            .navigationTitle("To Do")
        }
        
        
    }
}

#Preview {
    LandingView()
}


