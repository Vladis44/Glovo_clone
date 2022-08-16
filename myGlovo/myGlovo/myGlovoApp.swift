//
//  myGlovoApp.swift
//  myGlovo
//
//  Created by Влад on 09.08.2022.
//

import SwiftUI

@main
struct myGlovoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
