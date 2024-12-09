//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by serkan on 9.12.2024.
//

import Foundation

@Observable
class ExploreViewModel{
    var listing = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        Task { await fetchListing() }  
    }
    
    func fetchListing() async {
        do {
            self.listing = try await service.fetchListing()
        } catch {
            print("DEBUG: Failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
}
