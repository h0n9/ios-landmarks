//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/15.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
