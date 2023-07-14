//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by User on 14/7/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
                    MapView(coordinate: landmark.locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)

                    CircleImage(image: landmark.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        HStack {
                            // Use landmarkIndex with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in your model object.
                            Text(landmark.name)
                                .font(.title)
                            
                            // Provide a binding to the isFavorite property with the dollar sign ($).
                            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        }

                        HStack {
                            Text(landmark.park)
                            Spacer()
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                    .padding()
                }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
