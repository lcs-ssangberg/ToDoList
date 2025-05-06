//
//  ItemView.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-06.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(title: {
            Text(title)
        }, icon: {
            Image(systemName: done == true ? "checkmark.circle" : "circle")
        })
    }
}

#Preview {
    List {
        ItemView(title: "Study for Chem", done: true)
    }
}
