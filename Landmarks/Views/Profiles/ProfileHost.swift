//
//  ProfileHost.swift
//  Landmarks
//
//  Created by User on 14/7/23.
//

import SwiftUI

struct ProfileHost: View {
    // SwiftUI provides storage in the environment for values you can access using the @Environment property wrapper. Access the editMode value to read or write the edit scope.
    @Environment(\.editMode) var editMode
    // Read the user’s profile data from the environment to pass control of the data to the profile host.
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                // The EditButton controls the same editMode environment value that you accessed in the previous step.
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                // To avoid updating the global app state before confirming any edits — such as while the user enters their name — the editing view operates on a copy of itself.
                ProfileSummary(profile: modelData.profile)
            } else { Text("Profile Editor") }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        // Even though this view doesn’t use a property with the @EnvironmentObject attribute, ProfileSummary, a child of this view, does. So without the modifier, the preview fails.
        ProfileHost()
            .environmentObject(ModelData())
    }
}
