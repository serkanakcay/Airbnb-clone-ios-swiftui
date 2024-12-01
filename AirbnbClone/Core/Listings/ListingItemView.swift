//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by serkan on 30.11.2024.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    
    ]
    var body: some View {
        VStack(spacing: 8){
            //images
            TabView{
                ForEach(images, id: \.self){image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            //Listing Details
            HStack(alignment: .top){
                //details
                VStack(alignment:.leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Now 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing:2){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                //Rating
                Spacer()
                HStack{
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
                .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
