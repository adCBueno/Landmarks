//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by User on 14/7/23.
//

import SwiftUI

struct FavoriteButton: View {
    // Add an isSet binding that indicates the button’s current state, and provide a constant value for the preview.
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        // Because you use a binding, changes made inside this view propagate back to the data source.
        FavoriteButton(isSet: .constant(true))
    }
}
