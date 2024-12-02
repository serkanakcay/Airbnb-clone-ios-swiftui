//
//  ListinImageCarouselView.swift
//  AirbnbClone
//
//  Created by serkan on 2.12.2024.
//

import SwiftUI

struct ListinImageCarouselView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    
    ]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListinImageCarouselView()
}
