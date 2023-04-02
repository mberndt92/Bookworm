//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Maximilian Berndt on 2023/04/02.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
