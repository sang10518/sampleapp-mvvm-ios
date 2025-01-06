//
//  CoreDataStack.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import CoreData

class CoreDataStack {
    static let shared = CoreDataStack()

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PostsApp")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Core Data Store failed to load: \(error)")
            }
        }
        return container
    }()

    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                fatalError("Error saving context: \(error)")
            }
        }
    }
}

