//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/18/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
}
