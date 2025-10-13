//
//  NotificationView.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 13.10.2025.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
        
    var body: some View {
        VStack{
            if let landmark {
                CircleImage(image: landmark.image.resizable(),size: 60)
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
    }
}

#Preview {
    NotificationView()
}

#Preview {
    NotificationView(
        title: "Turtle Rock",
        message: "You are within 5 miles of Turtle Rock.",
        landmark: ModelData().landmarks[0])
}
