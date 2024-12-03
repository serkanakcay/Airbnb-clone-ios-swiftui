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
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListinImageCarouselView()
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
                Text("Maimi Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment:.leading){
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text("-")
                        Text("28 Reviews")
                            .underline()
                            .fontWeight(.semibold )
                    }
                   
                    .foregroundStyle(.black)
                    Text("Maimi, Florida")
                } .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            //Host info View
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Enter villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    HStack(spacing:2){
                        Text("4 Guest-")
                        Text("4 Bedrooms-")
                        Text("4 Beds-")
                        Text("4 Baths")
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
                ForEach(0..<2){features in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are experince, highly rated hosts who are comitted to providing great stars for guests")
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
                        ForEach(1..<5){bedhroom in
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
                ForEach(0..<5){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
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
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(.bottom, 72)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment:.leading){
                        Text("$500")
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
    ListingDetailView()
}
