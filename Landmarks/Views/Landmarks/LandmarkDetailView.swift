//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI

struct LandmarkDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImageView(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        Spacer()
                        FavoriteButtonView(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
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
                Spacer()
            }
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetailView(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
