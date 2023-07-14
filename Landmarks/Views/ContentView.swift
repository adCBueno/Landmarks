//
//  ContentView.swift
//  Landmarks
//
//  Created by User on 13/7/23.
//

import SwiftUI
import CoreData

// SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout.

struct ContentView: View {
    // @Environment(\.managedObjectContext) private var viewContext
    
    /*@FetchRequest(
     sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
     animation: .default)
     private var items: FetchedResults<Item>*/
    
    var body: some View {
           
        LandmarkList()
        
    }
        /*NavigationView {
            List(landmarks) { landmark in
                
                //  wrap the returned row in a NavigationLink, specifying the LandmarkDetail view as the destination.
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }*/
    
}

// The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
