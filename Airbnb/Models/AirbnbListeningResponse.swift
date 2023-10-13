//
//  AirbnbListeningResponse.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 12/10/23.
//

import Foundation

struct AirbnbListeningResponse: Codable {
//    let totalCount: Int
    let results: [AirbnbListings]
}
