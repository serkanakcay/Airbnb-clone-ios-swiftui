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
    @State var startData = Date()
    @State var endData = Date()
    @State var numGuest = 0
    
    
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    show.toggle()
                    
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                
                
            }
            .padding()
            
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
            
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("from", selection: $startData, displayedComponents: .date)
                        Divider()
                        DatePicker("from", selection: $endData, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }else {
                    CollapsedPickerView(title: "When", description: "add dates")
                      
                }
            }
           
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates}
            }
            
            VStack(alignment: .leading){
                if selectedOption == .guests{
                   Text("Who 's coming ")
                        .font(.title)
                        .fontWeight(.semibold)
                    Stepper{
                        Text("\(numGuest) adults")
                    } onIncrement: {
                        numGuest += 1
                    } onDecrement: {
                        numGuest -= 1
                    }
              
                       
                        
                }else {
                    CollapsedPickerView(title: "Who", description: "add guests")
                      
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)

            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
            }
            
           
         
        }
        Spacer()
    }
            
        }
    

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 2)
        
    }
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
