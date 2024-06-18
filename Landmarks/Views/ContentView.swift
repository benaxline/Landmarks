//
//  ContentView.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
