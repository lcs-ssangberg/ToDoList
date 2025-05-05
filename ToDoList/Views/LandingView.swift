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
                    
                    Label(title: {
                        Text("Study for Physics")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                    
                    Label(title: {
                        Text("Study for Comp Sci")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                    
                    Label(title: {
                        Text("Study for Chem")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                    
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
