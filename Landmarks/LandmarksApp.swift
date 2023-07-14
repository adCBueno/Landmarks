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
    // Use the @StateObject attribute to initialize a model object for a given property only once during the life time of the app. This is true when you use the attribute in an app instance, as shown here, as well as when you use it in a view.
    @StateObject private var modelData = ModelData()

    //The structure’s body property returns one or more scenes, which in turn provide content for display.
    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(modelData)
        }
    }
}
