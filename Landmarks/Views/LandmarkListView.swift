//
//  LandmarkList.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailView()
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
