//
//  CoreDataManager.swift
//  SimpleTodoApp
//
//  Created by Mohammad Azam on 5/15/22.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private var persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "TodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Core Data failed to initialize \(error)")
            }
        }
    }
    
    var viewContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    
    
}
