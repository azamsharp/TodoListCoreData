//
//  SimpleTodoAppApp.swift
//  SimpleTodoApp
//
//  Created by Mohammad Azam on 5/15/22.
//

import SwiftUI

@main
struct SimpleTodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            let coreDM = CoreDataManager.shared
            ContentView().environment(\.managedObjectContext, coreDM.viewContext)
        }
    }
}
