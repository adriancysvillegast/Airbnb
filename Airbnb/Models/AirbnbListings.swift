//
//  AirbnbListings.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 12/10/23.
//

import Foundation

struct AirbnbListings: Codable, Hashable, Identifiable {
    let id: String
    let listingUrl: String?
    let name: String?
    let summary: String?
    let space: String?
    let description: String?
    let houseRules: String?
    let thumbnailUrl: String? 
    let mediumUrl: String?
    let xlPictureUrl: String?
    let neighbourhood: String?
    let amenities: [String]?
    let price: Int?
    
//    Host Detail
    let hostName: String
    let hostSince: String
    let hostThumbnailUrl: String?
    let hostPictureUrl: String?
}
