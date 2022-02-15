//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI

struct LandmarkDetailView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description comes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView()
    }
}
