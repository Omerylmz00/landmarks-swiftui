//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 2.10.2025.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
            
                ForEach(filteredLandmarks){
                    landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
            .animation(.default, value: filteredLandmarks)
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
