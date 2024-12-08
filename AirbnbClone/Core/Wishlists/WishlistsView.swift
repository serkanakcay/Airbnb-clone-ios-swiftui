//
//  WishlistsView.swift
//  AirbnbClone
//
//  Created by serkan on 8.12.2024.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading, spacing: 32){
                VStack(alignment: .leading, spacing:  4){
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can creat, view or edit wishlists once you've logged in")
                        .font(.footnote)
        
                }
                Button(action: {
                    print("Login")
                }, label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                Spacer()
                
            }
            .padding()
            .navigationTitle("Wishlists")
           
        }
    }
}

#Preview {
    WishlistsView()
}
