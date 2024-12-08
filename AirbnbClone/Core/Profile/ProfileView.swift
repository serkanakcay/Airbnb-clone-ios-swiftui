//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by serkan on 8.12.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //Profile Login View
            VStack(alignment: .leading, spacing: 8){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
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
                HStack{
                    Text("Don't have an account ?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            
            //Profile Options
            VStack(spacing: 24){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accesibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit The Help Center")
                
            }
            .padding(.vertical)
            
        }
        .padding()
        
   
    }
}

#Preview {
    ProfileView()
}
