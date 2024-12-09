//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by serkan on 30.11.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @State var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack{
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                VStack {
                    ScrollView{
                        SearchAndFilterBar()
                            .onTapGesture {
                                withAnimation(.snappy){
                                    showDestinationSearchView.toggle()
                                }
                            }
                        LazyVStack(spacing: 32){
                            ForEach(viewModel.listing){listing  in
                                NavigationLink(value: listing){
                                    ListingItemView(listing: listing)
                                        .frame(height: 440)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                       
                        

                        
                    }
                    
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
                
            }
            
            
        }
    }
}



#Preview {
    ExploreView()
}
