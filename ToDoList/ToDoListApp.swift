//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sebastian on 2025-05-05.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
