//
//  CoreDataStack.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-25.
//

import CoreData

class CoreDataStack {
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "EmotionDatabase")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        })
        return container
    }()

    lazy var context: NSManagedObjectContext = {
        return persistentContainer.viewContext
    }()
}
