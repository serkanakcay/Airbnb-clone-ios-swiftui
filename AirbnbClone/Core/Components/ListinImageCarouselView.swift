//
//  ListinImageCarouselView.swift
//  AirbnbClone
//
//  Created by serkan on 2.12.2024.
//

import SwiftUI

struct ListinImageCarouselView: View {
    let listing : Listing
    var body: some View {
        TabView{
            ForEach(listing.imageUrls, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListinImageCarouselView(listing: DeveloperPreview.shared.listing[0])
}
