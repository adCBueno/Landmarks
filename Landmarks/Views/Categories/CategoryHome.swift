//
//  CategoryHome.swift
//  Landmarks
//
//  Created by User on 14/7/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) {key in
                    Text(key)                    
                }
            }
            Text("Hello, World!")
                .navigationTitle("Featured")
                
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
