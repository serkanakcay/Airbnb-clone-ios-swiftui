//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by serkan on 30.11.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView{
                    SearchAndFilterBar()
                    LazyVStack(spacing: 32){
                        ForEach(0...10, id: \.self){listing  in
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                   
                    

                    
                }
                
            }
            .navigationDestination(for: Int.self) { _ in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
            
            
        }
    }
}



#Preview {
    ExploreView()
}
