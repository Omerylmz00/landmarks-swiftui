//
//  MapView.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 2.10.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
           MKCoordinateRegion(
               center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
