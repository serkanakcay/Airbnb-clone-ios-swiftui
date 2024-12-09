//
//  ListinDetailView.swift
//  AirbnbClone
//
//  Created by serkan on 2.12.2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismis
    let listing: Listing
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListinImageCarouselView(listing:listing)
                    .frame(height: 320)
                Button(action: {
                    dismis()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)

                        }
                        .padding(32)
                        
                })

                
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("\(listing.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment:.leading){
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        Text("\(listing.raiting)")
                        Text("-")
                        Text("28 Reviews")
                            .underline()
                            .fontWeight(.semibold )
                    }
                   
                    .foregroundStyle(.black)
                    Text("\(listing.city), \(listing.state)")
                } .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            //Host info View
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Enter \(listing.type.description)  hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    HStack(spacing:2){
                        Text("\(listing.numberOfGuests) Guest-")
                        Text("\(listing.numberOfBedrooms) Bedrooms-")
                        Text("\(listing.numberOfBeds) Beds-")
                        Text("\(listing.numberOfBathrooms)Baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                Image("male-pp")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            .padding()
            Divider()
            //Listing Features
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features){features in
                    HStack(spacing:12){
                        Image(systemName: features.imageName)
                        VStack(alignment: .leading){
                            Text(features.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(features.subtitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        
                    }
                }
            }
            .padding()
            Divider()
            //beedrooms view
            VStack(alignment: .leading){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self){bedhroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedhroom \(bedhroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth:1)
                                    .foregroundStyle(.gray)
                            }
                            
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            Divider()
            //Listing amenities
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(listing.amenities){ amenity in
                    HStack{
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        Text(amenity.title)
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
                
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where youu'll be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
            
            
            
        }
        .toolbar(.hidden, for: .tabBar)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(.bottom, 72)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment:.leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("Total Before Taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                    }
                    Spacer()
                    Button(action: {}, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                
            }
            .padding()
            .background(.white)
        }
        
     
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listing[0])
}
