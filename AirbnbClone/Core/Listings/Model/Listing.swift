//
//  Listing.swift
//  AirbnbClone
//
//  Created by serkan on 9.12.2024.
//

import Foundation

struct Listing : Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var imageUrls: [String]
    var pricePerNight: Int
    let latitude: Double
    let longtitude: Double
    let adress: String
    let city: String
    let state: String
    let title: String
    let raiting: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type:ListingType
    
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable{
    case selfCheckIn
    case superHost
    
    var imageName: String{
        switch self {
        case .selfCheckIn : return "door.left.hand.open"
        case .superHost : return "medal"
        }
    }
    
    var title: String{
        switch self {
        case .selfCheckIn : return "Self Check-in"
        case .superHost : return "Superhost"
        }
    }
    
    var subtitle: String{
        switch self {
        case .selfCheckIn : return "Check yourself in with the keypad"
        case .superHost : return "SuperHosts are experienced, highly rated hosts who are commited to providing greate stars for guests"
        }
    }
    
    var id: Int { return self.rawValue }
    
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    
    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wi-Fi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "TV"
        case .alarmSystem:
            return "Alarm System"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        }
       
    }
    var imageName: String {
            switch self {
            case .pool:
                return "waveform.path.ecg"
            case .kitchen:
                return "fork.knife"
            case .wifi:
                return "wifi"
            case .laundry:
                return "tshirt"
            case .tv:
                return "tv"
            case .alarmSystem:
                return "alarm"
            case .office:
                return "desktopcomputer"
            case .balcony:
                return "arrowtriangle.down.circle"
            }
        }
    var id: Int { return self.rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment : return "Apartments"
        case .house : return "House"
        case .townHouse : return "Town Home"
        case .villa : return "Villa"
        
        }
    }
    var id: Int{return self.rawValue}
}
