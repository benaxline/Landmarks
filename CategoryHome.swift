//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/17/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello")
                .navigationTitle("Featured	")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
