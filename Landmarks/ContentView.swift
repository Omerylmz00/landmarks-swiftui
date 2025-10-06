//
//  ContentView.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 1.10.2025.
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
