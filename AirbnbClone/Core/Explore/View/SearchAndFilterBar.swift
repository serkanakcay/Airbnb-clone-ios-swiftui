//
//  SearchAndFilterBar.swift
//  AirbnbClone
//
//  Created by serkan on 1.12.2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment:.leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anyhwhere - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
               Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.2)
                .foregroundStyle(.gray)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7)
            
        }
        .padding()
    }
        
}

#Preview {
    SearchAndFilterBar()
}
