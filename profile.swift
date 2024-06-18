//
//  profile.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/18/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "benaxline")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case winter = "☃️"
        case autumn = "🍂"
        
        var id: String { rawValue }
    }
}
