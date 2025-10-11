//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 11.10.2025.
//
import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center){
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0) // 1/3 oranında küçültüyoruz
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
    }
}


#Preview {
    HikeBadge(name: "Preview testing")
}
