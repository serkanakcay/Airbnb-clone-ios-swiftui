//
//  ListinDetailView.swift
//  AirbnbClone
//
//  Created by serkan on 2.12.2024.
//

import SwiftUI

struct ListinDetailView: View {
    var body: some View {
        ScrollView{
            ListinImageCarouselView()
                .frame(height: 320)
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
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ListinDetailView()
}
