//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by User on 13/7/23.
//

import SwiftUI

// The @main attribute identifies the app’s entry point.
@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    //The structure’s body property returns one or more scenes, which in turn provide content for display.
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
