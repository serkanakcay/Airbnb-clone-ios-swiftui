//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by serkan on 8.12.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
            WishlistsView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Wishlists")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                }
            }
            
            
        }
    
#Preview {
    MainTabView()
}
