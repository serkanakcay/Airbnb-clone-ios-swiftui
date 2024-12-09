//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by serkan on 9.12.2024.
//

import Foundation

class DeveloperPreview{
    var listing: [Listing] = [
        .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "John Doe",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 3,
                numberOfBathrooms: 2,
                numberOfGuests: 6,
                numberOfBeds: 3,
                imageUrls:  ["listing-10","listing-8", "listing-3", "listing-4"],
                pricePerNight: 150,
                latitude: 40.7128,
                longtitude: -74.0060,
                adress: "123 Main St, Brooklyn, NY 11201",
                city: "New York",
                state: "NY",
                title: "Cozy Brooklyn Apartment",
                raiting: 4.8,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi, .kitchen, .laundry, .tv],
                type: .townHouse
            ),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Emily Smith",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 4,
                numberOfBathrooms: 4,
                numberOfGuests: 3,
                numberOfBeds: 8,
                imageUrls:["listing-6","listing-2", "listing-3", "listing-5"],
                pricePerNight: 250,
                latitude: 34.0522,
                longtitude: -118.2437,
                adress: "456 Sunset Blvd, Los Angeles, CA 90001",
                city: "Los Angeles",
                state: "CA",
                title: "Modern Los Angeles House",
                raiting: 4.9,
                features: [.selfCheckIn],
                amenities: [.pool, .kitchen, .wifi, .balcony],
                type: .house
            ),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Alice Johnson",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 2,
                numberOfBathrooms: 4,
                numberOfGuests: 3,
                numberOfBeds: 8,
                imageUrls:["listing-7","listing-1", "listing-5", "listing-9"],
                pricePerNight: 120,
                latitude: 41.8781,
                longtitude: -87.6298,
                adress: "789 North Ave, Chicago, IL 60601",
                city: "Chicago",
                state: "IL",
                title: "Charming Chicago Condo",
                raiting: 4.7,
                features: [.superHost],
                amenities: [.wifi, .kitchen, .tv],
                type: .villa
            ),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "David Lee",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 5,
                numberOfBathrooms: 4,
                numberOfGuests: 3,
                numberOfBeds: 8,
                imageUrls:["listing-9","listing-3", "listing-1", "listing-4"],
                pricePerNight: 400,
                latitude: 37.7749,
                longtitude: -122.4194,
                adress: "123 Ocean Drive, San Francisco, CA 94103",
                city: "San Francisco",
                state: "CA",
                title: "Luxury San Francisco Mansion",
                raiting: 5.0,
                features: [.selfCheckIn],
                amenities: [.pool, .kitchen, .wifi, .office],
                type: .house
            ),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Michael Brown",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 1,
                numberOfBathrooms: 4,
                numberOfGuests: 3,
                numberOfBeds: 8,
                imageUrls:["listing-5","listing-6", "listing-9", "listing-2"],
                pricePerNight: 90,
                latitude: 36.1699,
                longtitude: -115.1398,
                adress: "101 Las Vegas Blvd, Las Vegas, NV 89101",
                city: "Las Vegas",
                state: "NV",
                title: "Cozy Vegas Studio",
                raiting: 4.6,
                features: [.superHost],
                amenities: [.wifi, .kitchen, .tv],
                type: .apartment
            ),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Sophia Williams",
                ownerImageUrl: "male-pp",
                numberOfBedrooms: 3,
                numberOfBathrooms: 4,
                numberOfGuests: 3,
                numberOfBeds: 8,
                imageUrls:["listing-2","listing-3", "listing-5", "listing-4"],
                pricePerNight: 200,
                latitude: 47.6062,
                longtitude: -122.3321,
                adress: "456 Pine St, Seattle, WA 98101",
                city: "Seattle",
                state: "WA",
                title: "Beautiful Seattle Apartment",
                raiting: 4.8,
                features: [.selfCheckIn],
                amenities: [.wifi, .kitchen, .laundry, .tv],
                type: .apartment
            )
    
    ]
}
