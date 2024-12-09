//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by serkan on 9.12.2024.
//

import Foundation
@Observable
class ExploreService{
    func fetchListing() async throws -> [Listing]{
        return DeveloperPreview.shared.listing
    }
}
