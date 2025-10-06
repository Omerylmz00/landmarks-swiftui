//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 1.10.2025.
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
    }
}
