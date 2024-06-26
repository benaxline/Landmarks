//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/14/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        .commands {
            LandmarkCommands()
        }
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
        
    }
}
