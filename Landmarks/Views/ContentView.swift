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
    @Environment(\.managedObjectContext) private var viewContext
    
    /*@FetchRequest(
     sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
     animation: .default)
     private var items: FetchedResults<Item>*/
    
    var body: some View {
        /*Text("Turtle Rock").font(.title).fontWeight(.black).foregroundColor(Color.orange).padding()
         NavigationView {
         List {
         ForEach(items) { item in
         
         NavigationLink {
         Text("Item at \(item.timestamp!, formatter: itemFormatter)")
         .font(.headline)
         VStack {
         MapView()
         .ignoresSafeArea(edges: .top)
         .frame(height: 300)
         CircleImage()
         .offset(y: -130)
         .padding(.bottom, -130)
         VStack(alignment: .leading) {
         Text("Turtle Rock").font(.subheadline)
         HStack {
         Text("Joshua Tree Naational Park").font(.subheadline)
         Spacer()
         Text("California").font(.subheadline)
         }
         .font(.subheadline)
         .foregroundColor(.secondary)
         Divider()
         Text("About Turtle Rock")
         .font(.title2)
         Text("Descriptive text goes here.")
         }
         .padding()
         Spacer()
         }
         } label: {
         Text(item.timestamp!, formatter: itemFormatter)
         }
         }
         .onDelete(perform: deleteItems)
         }
         .toolbar {
         ToolbarItem(placement: .navigationBarTrailing) {
         EditButton()
         }
         ToolbarItem {
         Button(action: addItem) {
         Label("Add Item", systemImage: "plus")
         }
         }
         }
         Text("Select an item")
         }*/
        NavigationView {
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
    }
    
    /*private func addItem() {
     withAnimation {
     let newItem = Item(context: viewContext)
     newItem.timestamp = Date()
     
     do {
     try viewContext.save()
     } catch {
     // Replace this implementation with code to handle the error appropriately.
     // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
     let nsError = error as NSError
     fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
     }
     }
     }
     
     private func deleteItems(offsets: IndexSet) {
     withAnimation {
     offsets.map { items[$0] }.forEach(viewContext.delete)
     
     do {
     try viewContext.save()
     } catch {
     // Replace this implementation with code to handle the error appropriately.
     // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
     let nsError = error as NSError
     fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
     }
     }
     }
     }
     
     private let itemFormatter: DateFormatter = {
     let formatter = DateFormatter()
     formatter.dateStyle = .short
     formatter.timeStyle = .medium
     return formatter
     }()*/
}

// The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)*/
        ContentView()
    }
}
