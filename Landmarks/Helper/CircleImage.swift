//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 2.10.2025.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    var size: CGFloat = 250
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("kapadokya"))
}
