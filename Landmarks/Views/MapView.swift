//
//  Map.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI
import MapKit

struct MapView: View {
    // @State attribute can be modified from more than one view
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.2,
            longitudeDelta: 0.2
        )
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
