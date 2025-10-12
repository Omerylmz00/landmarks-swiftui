//
//  Profile.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 11.10.2025.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "omer_ylmz")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case winter = "☃️"
        case autumn = "🍂"
        
        var id: String {rawValue}
    }
}
