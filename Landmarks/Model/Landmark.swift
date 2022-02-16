//
//  Landmark.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import Foundation
import SwiftUI
import CoreLocation

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // read from json file but unused in public
    private var imageName: String
    private var coordinates: Coordinates
    
    // init from private vars and used in public
    var image: Image {
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

