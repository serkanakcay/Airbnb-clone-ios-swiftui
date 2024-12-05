//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by serkan on 5.12.2024.
//

import SwiftUI

enum DestinationSearchOptions{
    case locaition
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State var destination = ""
    @State var selectedOption: DestinationSearchOptions = .locaition
    
    var body: some View {
        VStack{
            Button {
                show.toggle()
                
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            VStack(alignment: .leading){
                if selectedOption == .locaition{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destinations", text: $destination)
                            .font(.subheadline)
                        
                        
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(.systemGray4))
                        
                    }
                }else {
                    CollapsedPickerView(title: "Where", description: "Add Destination")
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 2)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .locaition}
               
            }
            //Date selection view
            
            VStack{
                if selectedOption == .dates{
                    HStack{
                        Text("Show expanded view")
                        Spacer()
                    }
                }else {
                    CollapsedPickerView(title: "When", description: "add dates")
                      
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 2)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates}
            }
            
            VStack{
                if selectedOption == .guests{
                    HStack{
                        Text("Show expanded view")
                        Spacer()
                    }
                }else {
                    CollapsedPickerView(title: "Who", description: "add guests")
                      
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 2)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
            }
            
           
         
        }
    }
            
        }
    

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                
                
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
        
    }
}
