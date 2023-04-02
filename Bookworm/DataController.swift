//
//  DataController.swift
//  Bookworm
//
//  Created by Maximilian Berndt on 2023/04/02.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading Bookworm data: \(error.localizedDescription)")
            }
        }
    }
}
