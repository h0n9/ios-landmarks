//
//  LandmarkList.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRowView(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
