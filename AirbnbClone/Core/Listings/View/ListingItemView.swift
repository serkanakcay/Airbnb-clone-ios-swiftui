//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by serkan on 30.11.2024.
//

import SwiftUI

struct ListingItemView: View {
    var listing: Listing
       
       var body: some View {
           VStack(spacing: 8) {
               // Image Carousel
               ListinImageCarouselView(listing: listing)
                   .frame(height: 320)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
               
               // Listing Details
               HStack(alignment: .top) {
              
                   VStack(alignment: .leading) {
                       Text("\(listing.city), \(listing.state)")
                           .fontWeight(.semibold)
                           .foregroundStyle(.black)
                       Text("12 mi away")
                           .foregroundStyle(.gray)
                       Text("Now 3 - 10")
                           .foregroundStyle(.gray)
                       HStack(spacing: 2) {
                           Text("$\(listing.pricePerNight)")
                               .fontWeight(.semibold)
                           Text("night")
                       }
                       .foregroundStyle(.black)
                   }
                   
                   Spacer()
                   
                 
                   VStack {
                       HStack {
                           Image(systemName: "star.fill")
                           Text("\(listing.raiting)")
                       }
                       .foregroundStyle(.black)
                   }
                   .padding(.leading) 
               }
               .font(.footnote)
               .padding()
           }
           .padding()
       }
   }



#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listing[0])
}
